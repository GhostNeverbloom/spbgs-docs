# Komendy

Poniżej znajdziesz spis wszystkich dostępnych na serwerach komend:

!!! info "Na początek kilka ważnych informacji:"

    * Wszystkie komendy wprowadza się poprzez pole tekstowe czatu w grze (nie przez konsolę!) i poprzedza prefiksem `!`;

    * Jeśli chcesz wprowadzić komendę za pomocą konsoli, znak `!` należy poprzedzić poleceniem `say`, np. `say !info`;

    * Wszystkie komendy można przypisać do wybranych klawiszy na klawiaturze poprzez zbindowanie ich w konsoli, np. `setbind X say !info`, gdzie `X` oznacza nazwę danego klawisza;

    * Wprowadzenie nieprawidłowej wartości spowoduje przywrócenie domyślnej konfiguracji dla danego serwera;

    * Wprowadzenie wartości `0` również spowoduje przywrócenie ustawień domyślnych;

    * Jeśli jesteś [autoryzowanym graczem](authoritylevels.md), wprowadzona komenda zostanie zastosowana natychmiast. W przypadku zwykłego gracza jej użycie spowoduje rozpoczęcie głosowania;
	
    * Po zakończeniu gry wszystkie ustawienia są automatycznie przywracane do konfiguracji domyślnej. Wyjątkiem są komendy zawierające operatory logiczne (true/false), których wartości mogą zostać zachowane do czasu ponownego uruchomienia serwera.

## Komendy dostępne dla wszystkich graczy

Poniższe komendy dostępne są dla wszystkich graczy bez ograniczeń:

| Pełna nazwa | Skrót | Argument | Opis |
| --- | --- | --- | --- |
| [](){ #info }info | | | Wyświetla aktualne ustawienia gry; okno z ustawieniami jest widoczne wyłącznie dla gracza |
| [](){ #my-stats }mystats | ms | | Wyświetla statystyki danego gracza; okno statystyk jest widoczne wyłącznie dla tego gracza |
| [](){ #stats }stats | | `<StatName>` | Wyświetla statystyki wszystkich graczy w wybranej kategorii; wynik jest widoczny dla wszystkich. Wpisanie komendy bez argumentu wyświetla listę wszystkich dostępnych kategorii, które można również sprawdzić [tutaj](#available-stats) |
| [](){ #switch-role }switchrole | sr | | ZUmożliwia zmianę między rolą obserwatora a rolą gracza bez konieczności opuszczania serwera (działa w obie strony). Administracja może dołączyć do gry z poziomu obserwatora nawet wtedy, gdy osiągnięto maksymalną liczbę graczy |
| [](){ #lock-weapon-pickup }lockweaponpickup | lwp | `<true/false>` | Blokuje możliwość podnoszenia broni upuszczonej przez gracza przez innych uczestników gry |
| [](){ #lock-other-weapon-pickup }lockotherweaponpickup | lowp | `<true/false>` | lokuje możliwość podnoszenia broni upuszczonej przez innych graczy |
| [](){ #show-weapon-pickup-messages }showweaponpickupmessages | swpm | `<true/false>` | Włącza lub wyłącza powiadomienia dotyczące podnoszonej broni |
| [](){ #weapon-pickup-ammo-threshold }weaponpickupammothreshold | wpat | `<int value from 0 to 100>` | Blokuje możliwość podnoszenia pustej broni. Ustawia procentowy próg amunicji, poniżej którego broń nie będzie podnoszona podczas trwania fali aż do rozpoczęcia handlarki |
| [](){ #disable-item-drop }disableitemdrop  | dit | `<true/false>` | Umożliwia włączenie lub wyłączenie dropów Steam po zakończeniu gry |
| [](){ #zed-time-effect }zedtimeeffect  | zte | `<true/false>` | Możliwość wyłączenia efektu Czasu zet (ekran nie staje się czarno-biały) z wartością `false`. Domyślnie opcja ta jest wyłączona. |

!!! info "Wszystkie ustawienia dotyczące broni leżącej na ziemi, dropów Steam oraz Czasu Zetów są zapisywane lokalnie. Aby działały poprawnie, należy upewnić się, że pliki gry nie są ustawione w trybie „tylko do odczytu."

??? question "Jak działa system blokowania leżącej na ziemi broni?"

    Publiczny charakter serwerów sprawia, że nie zawsze wiemy, z kim gramy. Może to prowadzić do niepożądanych sytuacji, takich jak kradzież i sprzedaż naszej broni lub jej przypadkowe podniesienie przez innych graczy. Z tego powodu wprowadzono system blokowania broni leżącej na ziemi, który znacząco zwiększa komfort gry.
	
	* Domyślne ustawienia pozwalają wszystkim podnosić broń innych graczy;
	
	* Jeśli wartość komendy `!lwp` zostanie ustawiona na `true`, inni gracze nie będą mogli podnieść Twojej broni;
	
	* Komenda `!lowp` z wartością `true` uniemożliwia podnoszenie broni należącej do innych graczy;
	
	* Komenda `!swpm` z wartością `true` pozwala włączyć powiadomienia w czacie kto podnosi czyją broń. Domyślnie ta opcja jest wyłączona;
	
	* Komenda `!wpat` z wartością `5`-`10` zablokuje Ci możliwość podniesienia własnej, pustej broni w czasie fali. unkcja zostaje ponownie odblokowana po rozpoczęciu handlark;
	
	* Należy pamiętać, że jeśli przypadkowo wyrzucisz swoją pustą broń podczas fali i będziesz chciał ją ponownie podnieść, będzie to możliwe tylko po użyciu komendy `!wpat` z wartością `0`.
	
[](){ #available-stats }
??? note "Dostępne kategorie statystyki"
	
	Poniższa lista zawiera spis wszystkich dostępnych argumentów dla komendy `!stats`. JJako wartości można stosować zarówno pełne nazwy, jak i ich skrócone wersje:
	
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

## Pozostałe przydatne komendy

| Pełna nazwa | Skrót | Argument | Opis |
| --- | --- | --- | --- |
| [](){ #pause-trader }pausetrader | pt | | Zatrzymuje czas handlarki na 180 sekund |
| [](){ #unpause-trader }unpausetrader | upt | | Przywraca działanie timera |
| [](){ #skip-trader }skiptrader | st | | Pomija czas handlarki bez głosowania; opcja dostępna tylko dla autoryzowanych graczy |
| [](){ #kill-zeds }killzeds | kz | | Zabija 5 żyjących zetów; ponowna możliwość głosowania odnawia się po 120 sekundach od poprzedniego użycia. Używane w przypadku, gdy pod koniec fali zety utkną w niedostępnym dla gracza miejscu |
| [](){ #next-map }nextmap | nm | `<KF-MapName>` | Zmiana obecnej mapy na wybraną przez gracza |
| [](){ #set-current-wave }setcurrentwave | scw | `<number>` | Rozpoczyna wskazaną w komendzie falę |
| [](){ #end-wave }endwave | ew | | Kończy obecną falę |
| [](){ #next-wave }nextwave | nw | `<number>` | Wskazuje na to, która fala będzie następną |
| [](){ #map-vote }mapvote | mv | | Kończy grę i rozpoczyna głosowanie za wybór mapy |
| [](){ #set-password }setpassword | spw | `<password>` | Możliwość ustawienia hasła na serwerze; Po zakończeniu gry hasło automatycznie zostaje usunięte, a serwer staje się dostępny dla wszystkich |

??? example "Lista map dostępnych do wybory przy użyciu komendy `!nm`"

    !!! info "Przy wprowadzaniu nazwy mapy nie ma znaczenia, czy zapiszemy ją wielką czy małą literą."

    === "Oficjalne mapy"

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
		
    === "Mapy popularne na Precision"

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
	
	=== "Pozostałe mapy"
	
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

## Ustawienia poziomu trudności

| Pełna nazwa | Skrót | Arugment | Opis |
| --- | --- | --- | --- |
| [](){ #max-monsters }maxmonsters | mm | `<integer value>` | Określa, ile żywych zetów może jednocześnie znajdować się na mapie ; nazwa [`MaxMonsters`](https://wiki.killingfloor2.com/index.php?title=Survival_Mode#Maximum_ZEDs_At_Time), występuje także w trybie [CD](https://github.com/notblackout/kf2-controlled-difficulty/blob/master/options.md#maxmonsters) |
| [](){ #wave-size }wavesize | ws | `<integer value>` | Określa ilość zetów przypadającą na jedną falę; należy pamiętać, że zmiana tej wartości wpływa na wszystkie pozostałe fale |
| [](){ #disable-custom-wave-size }disablecustomwavesize | dcws | `<true/false>` | Przywraca długość fali, która została ustawiona poprzez komendę [`!wavesize`](#wave-size), do ustawień domyślnych; jeśli `true`, to długość fali przywrócona zostaje do domyślnej konfiguracji na serwerze |
| [](){ #wave-size-fakes }wavesizefakes | wsf | `<integer value>` | (Nieaktualne) Zmienia [Wave Size Fakes](#fakes-def) |
| [](){ #disable-wave-size-fakes }disablewavesizefakes | dwsf | `<true/false>` | (Nieaktualne) Wyłącza możliwość zmiany długości fali z użyciem mechaniki Wave Size Fakes; jeśli `true`, to [`wavesizefakes`](#wave-size-fakes) zostaje wyłączona |
| [](){ #wave-size-multiplier }wavesizemultiplier | wsm | `<float multiplier>` | Mnożnik ilości zetów przypadających na falę |
| [](){ #cohort-size }cohortsize | cs | `<integer value>` | Także `AI Spawn At Once`; Określa ile zetów może pojawić się w czasie jednej sekundy |
| [](){ #dosh-kill }doshkill | dk | `<float multiplier>` | Mnożnik ilości otrzymywanych pieniędzy za zabicie zeta; domyślnie mnożnik ten jest dynamiczny w grze, dlatego też nie zaleca się go zmieniać |
| [](){ #ammo-multiplier }ammomultiplier | am | `<float multiplier>` | Mnożnik amunicji; Wpływa na ilość amunicji w każdej broni i każdego gracza |
| [](){ #special-squad-count-pct }specialsquadcountpct | sscp | `<float value from 0 to 1>` | Wpływa na procentową szansę spawnu [specjalnej grupy zetów](customspawns.md#special-squad-count-pct-def) (duże i średnie zety[^1]); działa tylko jeśli komenda [`disablecustomsquadspawns`](#disable-custom-squad-spawns) ma wartość `false` |
| [](){ #disable-custom-squad-spawns }disablecustomsquadspawns | dcss | `<true/false>` | Wyłącza sysytem spawnu specjalnych grup zetów; jeśli przyjmuje wartość `true`, przywraca domyślny tryb spawnu zetów |
| [](){ #large-zed-spawn-chance }largezedspawnchance | lzsc | `<float value from 0 to 1>` | Wyznacza [szansę](customspawns.md#large-zed-spawn-chance-def) spawnu dużych zetów; działa jako dodatek do innych systemów spawnu |
| [](){ #disable-large-zed-spawn-chance }disablelargezedspawnchance | dlzsc | `<true/false>` | Dezaktywuje system szansy spawnu dużych zetówтк; jeśli `true`, to wyłączona zostaje `largezedspawnchance` |
| [](){ #disable-vent-spawns }disableventspawns | dvs | `<true/false>` | Wyłącza możliwość spawnu zetów w wentylacji i pomniejszych włazach |
| [](){ #disable-max-large-monsters }disablemaxlargemonsters | dmlm | `<true/false>` | (Nieaktywne) Wyłącza ograniczenie ilości dużych zetów na mapie. Działa podobnie jak `MaxMonsters` z tym, że dotyczy tylko dużych zetów |
| [](){ #ai-difficulty }aidifficulty | ad | `<index>` | Wybór rodzaju zedów dostępnych w ramach systemu  [AI Difficulty](aidifficulty.md) |
| [](){ #disable-custom-ai-difficulty }disablecustomaidifficulty | dcad | `<true/false>` | Wyłącza możliwość wyboru rodzaju zetów w ramach systemu [AI Difficulty](aidifficulty.md), czym dezaktywuje komendę [`!ad`](#ai-difficulty) |

!!! info " [](){ #fakes-def }[Wave Size Fakes](#wave-size-fakes) pozwala regulować trudność gry poprzez ręczną zmianę ilości graczy w grze, niezależnie od tego, ile w danym momencie znajduje się graczy na serwerze."

## Komendy dotyczące gracza

Dostępne tylko dla [autoryzowanych graczy](authoritylevels.md) z rolmi: "Admin", "Moderator" oraz "Pomocnik".

Poniższe komendy nie mogą zostać użyte na użytkownikach z rolą "Admin".

!!! warning "Najwyższy poziom dostępności komend, czyli rola "Admin", nie jest tym samym co autoryzacja na poziomie administratora serwera, dlatego też większość poniższych komend będzie miała zastosowanie do większości graczy w grze."

| Pełna nazwa | Skrót | Argument | Opis |
| --- | --- | --- | --- |
| [](){ #player-list }playerlist | pl | | Wyświetla w oknie czatu gry listę obecnych na serwerze graczy (włączając w to obserwatorów) wraz z ich lokalnym ID |
| [](){ #kill }kill | | `<target>` | Zabija danego gracza (nie działa w czasie handlarki) |
| [](){ #kick }kick | | `<target>` | Wyrzuca danego gracza z serwera, natomiast wyrzucony gracz ma możliwość ponownego wejścia na serwer w czasie gry |
| [](){ #kick-session-ban }kicksessionban | | `<target>` | Wyrzuca danego gracza z serwera bez możliwości ponownego wejścia na serwer w czasie gry (taką samą funkcję spełnia domyślne głosowanie za wyrzucenie gracza w grze) |
| [](){ #friendly-fire }friendlyfire | ff | `<target>` `<amount>` | Włącza możliwość tzw. "friendly fire" przeciwko wskazanemu graczowi, przy czym wartość`<amount>` 0 dezaktywuje daną funkcję, 1 jest wartością maksymalną. Po śmierci gracza wartość przywrócona zostaje automatycznie do `0` |
| [](){ #burn-player }burnplayer | bp | `<target>` `<amount>` | Na 10 sekund narzuca efekt ognia na danego gracza, przy czym `<amount>` oznacza ilość otrzymywanych obrażeń na sekundę |
| [](){ #puke-player }pukeplayer | pp | `<target>` `<amount>` | Na 10 sekund narzuca efekt wymiocin spaślaka na danego gracza, przy czym `<amount>` oznacza ilość otrzymywanych obrażeń na sekundę |
| [](){ #player-size }playersize | ps | `<target>` `<multiplier>` | Zmienia rozmiar modelu danego gracza, przy czym `<amount>` jest mnożycielem (tzn. 1 jest wartością domyślną) |
| [](){ #teleport-player }teleportplayer | tp | `<target>` | Teleprotuje danego gracza w miejce, na które wskazuje kamera użytkownika komendy (komenda działa tylko w przypadku płaskich powierzchni) |

!!! info "Komedny dotyczące gracza"

    Komendy wykorzystujące argument `<target>` można używać w połączeniu z:
	
	* Lokalnym ID, który wyświetla się po użyciu komendy `!pl`;
	
	* `me` lub `self` (pozwala użyć komendy na sobie);
	
	* `all` (pozwala użyć komendy na wszystkich obecnych graczach).

## Przykładowe użycie

!!! example "Przykłady użycia"

    === "Podstawowe"

	    * __`!ad 3`__

        * `!mm 48`

        * __`!wavesize 160`__

    === "Z kropką"

	    * __`!sscp 0.5`__

        * __`!lzsc 0.05`__

	    * __`!ammomultiplier 2.5`__

    === "Włączające/wyłączające daną funkcję"

	    * __`!dcad false`__

        * __`!dlzsc true`__

	    * __`!lockweaponpickup false`__

    === "Tekstowe"

	    * __`!nm kf-nuked`__

	    * __`!stats hsacc`__

        * __`!spw penis228`__

    === "Pozostałe"

	    * __`!friendlyfire all 0.5`__

	    * __`!bp 128 5`__

        * __`!kill me`__

[^1]: Duże zety (Larges) — Rzeźnik oraz mięśniak, średnie zety (Mediums) — Truchło, Syrena, Spaślak, Dręczyciel oraz Rozpruwacz.