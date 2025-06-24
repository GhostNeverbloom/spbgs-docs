# Чат-команды

Список всех доступных команд.

!!! info "Вещи которые стоит учесть:"

    * Все команды применяются через текстовый чат игры (не консоль!) и начинаются с префикса `!`;

    * Можно применить команду через консоль если прописать ещё в качестве команды `say`, т.е. `say !info`;

    * Также можно назначить чат-команду на клавишу, как и любую консольную команду, например так: `setbind X say !info`;

    * Введение некорректного значения вернёт стандартное значение для команды из серверной конфигурации;

    * Веедение нуля в качестве значения тоже вернёт стандартное значение из конфигов;

    * После введения команды она применится сразу если у вас соответствующий [уровень доступа](authoritylevels.md), в противном случае начнётся голосование за применение команды, если оно доступно;
	
    * На текущий момент все правки сделанные через чат-команды возвращаются на стандартные значения по окончании матча, однако команды-переключатели (true/false) могут сохранять значение до тех пор пока сервер не перезапустится; нужно иметь это в виду при изменении тех или иных настроек.

## Публичные

Эти команды доступны для использования всем без каких-либо ограничений.

| Полное название | Название | Аргументы | Описание |
| --- | --- | --- | --- |
| [](){ #info }info | | | Отображает текущие настройки матча; всплывающее окно видно только вам |
| [](){ #my-stats }mystats | ms | | Отображает персональную статистику за матч; всплывающее окно видно только вам |
| [](){ #stats }stats | | `<StatName>` | Отображает статистику для каждого игрока по категориям, видную всем; введите без аргумента чтобы вывести список доступных категорий, или посмотрите их [здесь](#available-stats) |
| [](){ #switch-role }switchrole | sr | | Переключает вашу роль с игрока на спектаторы и наоборот без необходимости перезаходить на сервер; Игроки с уровнем "Админ" могут зайти в полное лобби игнорируя лимит в 6 игроков |
| [](){ #lock-weapon-pickup }lockweaponpickup | lwp | `<true/false>` | Блокирует остальным игрокам возможность подбирать ваше оружие |
| [](){ #lock-other-weapon-pickup }lockotherweaponpickup | lowp | `<true/false>` | Блокирует возможность подбирать оружие других людей |
| [](){ #show-weapon-pickup-messages }showweaponpickupmessages | swpm | `<true/false>` | Включает индивидуальное логирование подбираемого оружия в чат. Например, можно видеть сообщение о том что кто-то подбирает чьё-то оружие |
| [](){ #weapon-pickup-ammo-threshold }weaponpickupammothreshold | wpat | `<int value from 0 to 100>` | Блокирует подбор пустого оружия посредством установки порога оставшихся патронов (в процентах), ниже которого оружие становится неподбираемым во время волны |
| [](){ #disable-item-drop }disableitemdrop  | dit | `<true/false>` | Если стоит на `true`, то отключает выпадение предметов в инвентарь Steam по окончании матча; можно использовать если не нравится когда в инвентарь падает ненужный хлам |

!!! info "Настройки команд, касающихся лежащего на земле оружия, сохраняются локально в клиентских конфигах, поэтому для их корректной работы убедитесь что ваши конфиги не находятся в режиме 'только чтения'."

??? question "Как работает система блокировки оружия?"

    Система блокировки оружия предназначена для более удобного менеджмента оружия при игре на публичных серверах (пабах),
    поскольку множество ничего не подозревающих людей часто не понимают что им не следует подбирать или продавать чужое оружие.
	
	* По умолчанию все могут подбирать оружие других людей;
	
	* Если установить `!lwp` на `true`, никто другой не сможет подбирать ваше оружие;
	
	* `!lowp` установленное на `true` не позволит вам подбирать оружие других игроков если вы случайно натыкаетесь на него;
	
	* `!swpm` установленное на `true` полезно для того чтобы видеть кто подбирает чьё оружие, однако мы оставили фичу отключенной по умолчанию, т.к. не все хотят видеть постоянные сообщения о том что кто-то что-то подбирает;
	
	* `!wpat` установленное на `5`-`10` не позволит вам подобрать своё опустошённое или почти опустошённое оружие, например во время смены пустого оружия на запасное в пылу боя (работает только во время волны, т.е. вне торговца);
	
	* Имейте в виду, что если вы случайно выбросите пустое оружие, но потом передумаете и захотите снова подобрать его (например если нашёлся ящик патронов), подобрать его не получится пока не вернуть `!wpat` обратно на `0`.
	
[](){ #available-stats }
??? note "Доступные разделы статистики"
	
	Здесь список всех возможных аргументов для команды `!stats`, которые могут прописываться как полным, так и укороченным названием:
	
	* `Accuracy` (`acc`)
	* `DamageDealt` (`damaged`)
	* `DamageTaken` (`damaget`)
	* `DoshEarned` (`dosh`)
	* `Headshots` (`hs`)
	* `HeadshotAccuracy` (`hsacc`)
	* `HealsGiven` (`healsg`)
	* `HealsReceived` (`healsr`)
	* `LargeKills` (`larg`)
	* `HuskKills` (`hu`)
	* `ShotsFired` (`shotsf`)
	* `ShotsHit` (`shotsh`)

## Утилитарные

| Полное название | Название | Аргументы | Описание |
| --- | --- | --- | --- |
| [](){ #pause-trader }pausetrader | pt | | Временно останавливает обратный отсчёт торговца; длится 180 секунд, после чего таймер автоматически возобновляется |
| [](){ #unpause-trader }unpausetrader | upt | | Возобновляет таймер торговца |
| [](){ #skip-trader }skiptrader | st | | Пропускает таймер торговца; недоступно для голосования, т.к. аналогичная опция с голосованием уже есть в игре |
| [](){ #kill-zeds }killzeds | kz | | Убивает 5 живых зедов; имеет 180-секундный кулдаун на использование. Применяется в случаях когда зеды застревают где-то на карте |
| [](){ #next-map }nextmap | nm | `<KF-MapName>` | Незамедлительно меняет текущую карту на указанную |
| [](){ #set-current-wave }setcurrentwave | scw | `<number>` | Начинает указанную по номеру волну |
| [](){ #end-wave }endwave | ew | | Завершает текущую волну |
| [](){ #next-wave }nextwave | nw | `<number>` | Назначает то, какая волна будет следующей в очереди |
| [](){ #map-vote }mapvote | mv | | Форсирует окончание матча и начинает голосование за выбор карты |
| [](){ #set-password }setpassword | spw | `<password>` | Устанавливает временный пароль на текущую сессию; возвращается на состояние без пароля если не ввести пароль при введении команды |

??? example "Список точных названий карт для команды `!nm`"

    !!! info "Стоит учесть, что при введении названия карты регистр букв не важен и они могут писаться как угодно."

    === "Vanilla Maps"

        ``` markdown
        KF-Airship
        KF-AshwoodAsylum
        KF-BarmwichTown
        KF-Biolapse
        KF-Bioticslab
        KF-BlackForest
        KF-BurningParis
        KF-CarillonHamlet
        KF-CastleVolter
        KF-Catacombs
        KF-ContainmentStation
        KF-Crash
        KF-Desolation
        KF-Dystopia2029
        KF-Elysium
        KF-EvacuationPoint
        KF-Farmhouse
        KF-HellmarkStation
        KF-HostileGrounds
        KF-InfernalRealm
        KF-KrampusLair
        KF-Lockdown
        KF-MonsterBall
        KF-Moonbase
        KF-Netherhold
        KF-Nightmare
        KF-Nuked
        KF-Outpost
        KF-PowerCore_Holdout
        KF-Prison
        KF-Rig
        KF-Sanitarium
        KF-Santasworkshop
        KF-ShoppingSpree
        KF-Spillway
        KF-SteamFortress
        KF-Subduction
        KF-TheDescent
        KF-TragicKingdom
        KF-VolterManor
        KF-ZedLanding
        ```
		
    === "Popular Custom Maps"

        ``` markdown
		kf-area52_a
		kf-bruhsea
		kf-city17_a
		KF-CrystalCaverns_New_NoTags
		KF-DesolationOriginal
		KF-Dust
		KF-De_Dust2-CDEdit
		kf-lockdown_a
		kf-nuke_b
        KF-Spillway_Night
        KF-SummerNightNuked
		KF-Vortex-CDEdit
        ```
	
	=== "Other Maps (Do NOT Click)"
	
	    ``` markdown
		
        Alternative Map Versions:

        KF-BridgeHoldout
        KF-BurningParisNightDay
        KF-Crash_Night
        KF-ChristmasNuked
        KF-DesolationOriginal
        KF-ForestNuked
        KF-Nuked-Beta
        KF-ParisBridgeWW2
        KF-PowerCoreOriginal
        KF-Spillway_Night
        KF-SummerNightNuked
		
        KF1 Maps:

        KF-Biohazard
        KF-BioticsLabUK-Fix
        KF-Asylum
        KF-ClassicBioticsLab
        KF-Farm_Remastered
        KF-IceCave
        KF-KF1-Aperture
        KF-KF1-Bedlam
        KF-KF1-DefenceB2
        KF-KF1-FilthsCross
        KF-KF1_Foundry
        KF-KF1-FrightYard
        KF-KF1-Hellride
        KF-KF1-HillBillyHorror
        KF-KF1-IceBreaker
        KF-KF1-LilBigClot-Kitchen
        KF-KF1_Manor
        KF-KF1-Medieval_Fortress
        KF-KF1-MoonBase
        KF-KF1-MoonBase(NG)
        KF-KF1_TheForestHouse
        KF-KF1-WaterWorks
        KF-KF1_West_London
        KF-MountainPass_zfix
        KF-SirensBelch
        KF-SteamlandRemakeNG
        KF-ThrillsChills
		
        CD-Ready Maps:

        kf-area52_a
        kf-avp_tempest_b
        kf-bruhsea
        kf-city17_a
        KF-CrystalCaverns_New_NoTags
        KF-De_Dust2-CDEdit
		KF-Dust
        kf-friendlygrounds
        kf-lockdown_a
        kf-nuke_b
        KF-Airship-CDEdit
        KF-Corridor
        KF-CS_Italy-CDEdit
        KF-De_Nuke-CDEdit
        KF-DE_Dust-CDEdit
        KF-Dust2_Redux
        KF-EvacuationPoint-CDEdit
        KF-Fairfield-CDEdit
        KF-GardenHeights-CDEdit
        KF-InfectedWalls-CDEdit
        KF-Inferno-CDEdit
        KF-IronCross_fix
        KF-KF1_West_London_CDEdit
        KF-SantasWorkshop-CDEdit
        KF-ShoppingSpree-CDEdit
		
        Casual Custom Maps:
	
        KF-CytologyLab
        KF-TheRiverside
        KF-BlueCave
        KF-DeathSentenceFinal
        KF-Santa-town
        KF-Slaughterhouse-v2-2
        KF-Ville_de_Doom
        KF-Afghanistan
        KF-Antize-RE2_RPD
        KF-Aphrodite
        KF-GhostLake
        KF-Hell_Cant_Wait
        KF-NachtDerUntoten
        KF-NachtDerUntoten_TraderPod
        KF-Nightclub
        KF-SilentHillOld
        KF-Zelda
        KF-CastleWolfenstein
        KF-DeadSimple
        KF-DooM_2_MAP01
        KF-DOOM2-3_edit
        KF-E1M1
        KF-Entryway
        KF-HellHole
        KF-Hells_ReachV2
        KF-Affairs
        KF-Aftermath
        KF-AkademiHigh
        KF-ApexB5-FIX
        KF-Area52
        KF-Arid_Zedlands
        KF-ASHES
        KF-AvP_Tempest
        KF-BeforeDawn
        KF-Big_Green_Fortified
        KF-BikiniAtoll
        KF-Blockfort-v2
        KF-Chess
        KF-City17
        KF-CityBlockade
        KF-ClubConfession
        KF-Construct
        KF-Crazy_Playboy_Edited
        KF-Cross
        kf-crystalcaverns
        KF-CS_Italy
        KF-CS_Militia
        KF-CSGO_Assault
        KF-CSGO_Office
        KF-CubeV2
        KF-DarkZone
        KF-De_Dust
        KF-De_Dust2
        KF-De_Nuke
        KF-Deck16
        KF-DeepingWall
        KF-Defence-2015
        KF-Defence_Thyself
        KF-DEPOT
        KF-Edge_Of_Reality
        KF-ElAnexo
        KF-Embry_Square
        KF-FacingWorlds-FallBack
        KF-Favela-Fixed-Again
        KF-FinlandWinterland
        KF-FinlandWinterday
        KF-GardenHeights
        KF-GridLock
        KF-HeavenOrHell
        KF-HellsCrypt
        KF-Highschool
        KF-HorzineArena-B2-v6
        KF-HorzineExpress
        KF-IceArena
        KF-InfectedWalls
        KF-Inferno
        KF-Junkyard
        KF-Kholnee
        KF-KillingPool
        KF-LastHope
        KF-Lava_Castle
        KF-LightArena
        KF-LondonerStreets
        KF-Meow_Remake
        KF-Metro-Chase
        KF-MetroSwamps
        KF-Miasma
        KF-MinecraftBase
        KF-Mira's_Library
        KF-Museum
        KF-Nausea
        KF-NieYey_Arena_b1
        KF-NieYey_Trial_b1
        KF-NewStormDefence
        KF-NoMercy
        KF-Offices
        KF-Parking_Garage
        KF-Payday2_Alaskan_Deal
        KF-Port
        KF-QuarantineBreach
        KF-Ravenholm
        KF-Random_Holdout
        KF-Rust
        KF-Shadowzone_Remastered
        KF-SiloSeven
        KF-Simple_Holdout
        KF-SlipgateComplex
        KF-SouthPark
        KF-Skyscraper_War
        KF-The_Ocean
        KF-ThePush
        KF-ToiletMap
        KF-TrainingGrounds
        KF-Tunnel
        KF-Tyro
        KF-Vortex-CDEdit
        KF-WaterOnMars
        KF-Yeytler
        KF-ZedsDiner
		
        Painkiller Maps:
		
        KF-Painkiller-Descent
        KF-PK-Catacombs
        KF-PK-Cathedral
        KF-PK-Cemetery
        KF-PK-Cemetery_Halloween
        KF-PK-Colosseum
        KF-PK-Enclave
        KF-PK-Enclave-Winter
        KF-PK-OperaHouse
        KF-PK-OrientalCastle
		
        S.T.A.L.K.E.R. Maps:
		
        KF-Stalker-Arena
        KF-Stalker-Agroprom
        KF-Stalker-Cordon
        KF-Stalker-Darkscape
        KF-Stalker-Garbage
        KF-Stalker-Hospital
        KF-Stalker-LabX16
        KF-Stalker-Limansk
        KF-Stalker-RedForest
        KF-Stalker-Rostok-Bar
        KF-Stalker-Yantar
		```

## Настройки сложности

| Полное название | Название | Аргументы | Описание |
| --- | --- | --- | --- |
| [](){ #max-monsters }maxmonsters | mm | `<integer value>` | Определяет сколько живых зедов могут находиться на карте единовременно; поэтому и называется [`MaxMonsters`](https://wiki.killingfloor2.com/index.php?title=Survival_Mode#Maximum_ZEDs_At_Time), как и на [CD](https://github.com/notblackout/kf2-controlled-difficulty/blob/master/options.md#maxmonsters) |
| [](){ #wave-size }wavesize | ws | `<integer value>` | Указывает точное число зедов на волну; не рекомендуется изменять вручную, потому что команда перезаписывает число зедов для всех волн |
| [](){ #disable-custom-wave-size }disablecustomwavesize | dcws | `<true/false>` | Отключает систему кастомной длины волн, которая задаётся через [`!wavesize`](#wave-size); если `true`, то длина волн становится как в ванильной игре |
| [](){ #wave-size-fakes }wavesizefakes | wsf | `<integer value>` | (Устарело) Устанавливает [фейки для длины волн](#fakes-def); Применяется и к кастомной системе длины волн |
| [](){ #disable-wave-size-fakes }disablewavesizefakes | dwsf | `<true/false>` | (Устарело) Отключает систему фейков для длины волн; если стоит на `true`, то [`wavesizefakes`](#wave-size-fakes) не даёт эффекта |
| [](){ #wave-size-multiplier }wavesizemultiplier | wsm | `<float multiplier>` | Умножает количество зедов в волне на указанный коэффициент; учитывает изначальную длину волн, поэтому полезно для точной настройки волн, не ломая длину остальных волн |
| [](){ #cohort-size }cohortsize | cs | `<integer value>` | Также `AI Spawn At Once`; определяет сколько зедов могут заспавниться единовременно за один тик спавн менеджера; если стоит на 8, то игра будет спавнить 8 зедов в секунду |
| [](){ #dosh-kill }doshkill | dk | `<float multiplier>` | Множитель количества денег, получаемых за убийство зедов; в обычной игре это значение меняется динамически по ходу игры, поэтому трогать его практически бессмысленно |
| [](){ #ammo-multiplier }ammomultiplier | am | `<float multiplier>` | Множитель количества патронов для всего оружия; по умолчанию каждый класс оружия имеет собственные значения, поэтому ручная настройка перезапишет значения для всех классов на указанное вами |
| [](){ #special-squad-count-pct }specialsquadcountpct | sscp | `<float value from 0 to 1>` | Определяет процентаж [особых отрядов зедов](customspawns.md#special-squad-count-pct-def) (биги/медиумы[^1]); работает только если [`disablecustomsquadspawns`](#disable-custom-squad-spawns) стоит на `false` |
| [](){ #disable-custom-squad-spawns }disablecustomsquadspawns | dcss | `<true/false>` | Полностью отключает систему спавна особых отрядов зедов; если стоит на `true`, возвращает ванильный спавн цикл зедов |
| [](){ #large-zed-spawn-chance }largezedspawnchance | lzsc | `<float value from 0 to 1>` | Устанавливает [шанс](customspawns.md#large-zed-spawn-chance-def) спавна зедов в качестве бигов; работает в дополнение к другим имеющимся системам спавна |
| [](){ #disable-large-zed-spawn-chance }disablelargezedspawnchance | dlzsc | `<true/false>` | Отключает систему шанса спавна бигов; если `true`, то отключает `largezedspawnchance` |
| [](){ #disable-vent-spawns }disableventspawns | dvs | `<true/false>` | Отключает спавн зедов из вентиляций и люков |
| [](){ #disable-max-large-monsters }disablemaxlargemonsters | dmlm | `<true/false>` | (Устарело) Отключает лимит числа живых бигов на карте, который работает схожим образом с `MaxMonsters`, но только для бигов; сами лимиты выставлены в серверых конфигах |
| [](){ #ai-difficulty }aidifficulty | ad | `<index>` | Устанавливает активный пресет для системы [AI Difficulty](aidifficulty.md) |
| [](){ #disable-custom-ai-difficulty }disablecustomaidifficulty | dcad | `<true/false>` | Полностью выключает систему [AI Difficulty](aidifficulty.md), тем самым отключая действие команды [`!ad`](#ai-difficulty) |

!!! info "Термин [](){ #fakes-def }[фейки](#wave-size-fakes) относится к системе, которая для определённых механик имитирует заданное количество игроков, отличающееся от их фактического количества; по сути 5 фейков значит что игра будет себя вести так будто в матче находится 5 игроков, вне зависимости от того сколько игроков на самом деле."

## Направленные на игрока

Используются [ролями](authoritylevels.md) "Админ", "Модератор" и "Помощник" для менеджмента игроков на сервере.

Эти команды не будут работать на тех игроках которые авторизованы как админы сервера.

!!! warning "Наивысший уровень доступа к командам ("Админ") -- это не то же самое что и авторизация в качестве админа сервера, поэтому большинство команд направленных на игроков будут работать на большинстве игроков вне зависимости от их уровня доступа к командам, только если они не авторизованы как админы сервера."

| Полное название | Название | Аргументы | Описание |
| --- | --- | --- | --- |
| [](){ #player-list }playerlist | pl | | Отображает текущий список игроков с их локальными ID |
| [](){ #kill }kill | | `<target>` | Убивает указанного игрока (не работает во время торговца) |
| [](){ #kick }kick | | `<target>` | Удаляет игрока с сервера с возможностью зайти обратно |
| [](){ #kick-session-ban }kicksessionban | | `<target>` | Удаляет игрока с сервера без возможности зайти обратно в текущую сессию (аналогично голосованию за удаление) |
| [](){ #friendly-fire }friendlyfire | ff | `<target>` `<amount>` | Включает огонь по своим в отношении указанного игрока, где `<amount>` 0 означает что огня по своим нет, 1 -- максимальный огонь по своим; когда игрок умирает, значение возвращается на `0` |
| [](){ #burn-player }burnplayer | bp | `<target>` `<amount>` | Применяет эффект горения на указанного игрока который длится 10 секунд, где `<amount>` это величина урона в секунду |
| [](){ #puke-player }pukeplayer | pp | `<target>` `<amount>` | Применяет эффект рвоты толстяка на указанного игрока который длится 10 секунд, где `<amount>` это величина урона в секунду |
| [](){ #player-size }playersize | ps | `<target>` `<multiplier>` | Изменяет размер модели персонажа для указанного игрока, где `<amount>` это множитель (т.е. 1 - без увеличения) |
| [](){ #teleport-player }teleportplayer | tp | `<target>` | Телепортирует указанного игрока в то место куда направлена ваша камера (работает только на плоских поверхностях) |

!!! info "Команды направленные на игрока"

    Команды с аргументом `<target>` могут принимать несколько типов значений:
	
	* Числовой индекс игрока, полученнй с помощью команды `!pl`;
	
	* `me` или `self` (применяет команду на себя);
	
	* `all` (применяет команду на всех).

## Примеры использования

!!! example "Примеры по типу данных"

    === "Целое"

	    * __`!ad 3`__

        * `!mm 48`

        * __`!wavesize 160`__

    === "С точкой"

	    * __`!sscp 0.5`__

        * __`!lzsc 0.05`__

	    * __`!ammomultiplier 2.5`__

    === "Переключатель"

	    * __`!dcad false`__

        * __`!dlzsc true`__

	    * __`lockweaponpickup false`__

    === "Текстовое"

	    * __`!nm kf-nuked`__

	    * __`!stats hsacc`__

        * __`!spw penis228`__

    === "Комбинированное"

	    * __`!friendlyfire all 0.5`__

	    * __`!bp 128 5`__

        * __`!kill me`__

[^1]: Биги (Larges) -- Мясники и Отбивальщики, медиумы (Mediums) -- Хаски, Сирены, Толстяки и Берсеркеры.