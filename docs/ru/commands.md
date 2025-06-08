# Команды

Список всех команд. Все команды начинаются с префикса `!`.

## Новые

| Название | Сокращение | Аргументы | Описание | Уровень доступа |
| --- | --- | --- | --- | --- |
| wsm | wsm | | множитель, позволяющий изменять количество мобов в волнах не указывая точное значение зедов, а именно множителем, который применяется ко всем волнам и не оверрайдит оригинальное число зедов, поэтому увеличение их числа с последующими волнами будет сохраняться. При смене карты значение сбрасывается на дефолтное значение (1). Не рекомендую сильно заигрываться с этим, но если вдруг сильно захочется, то оно теперь есть. | |
| cs | cs | | это то самое значение единовременного числа спавнящихся зедов, которое было статичным на всех пресиженах (8 на шестом, 12 на седьмом и 16 и восьмом). Оно не сильно влияет на игровой процесс, но теперь в общем это тоже можно менять, таким образом можно создавать полностью одинаковую сложность на всех трёх пресижен-серверах (ну и на 5.1 тоже). | |
| setpassword | spw | | этой командой можно запаролить сервер, если вам к примеру нужно подержать слот для товарищей или по какой-то другой причине. !spw penis поставит пароль penis, введение команды без текста пароля (просто !spw) уберёт пароль. При смене карты пароль автоматически снимется. Если не будет сниматься, то это будет расцениваться как баг и мне желательно сразу об этом рассказать если такое случится. | |
| disableitemdrop  | dit | | dad adadada d | |

## Общие

| Название | Сокращение | Аргументы | Описание | Уровень доступа |
| --- | --- | --- | --- | --- | 
| pausetrader | pt | | Pauses trader time | - | 
| skiptrader | st | | Skips trader time | - | 
| maxmonsters | st | `<integer value>` | Sets MaxMonsters in runtime | - | 
| wavesize | ws | `<integer value>` | Sets custom number of zeds to spawn per wave | - | 
| wavesizefakes | wsf | `<integer value>` | Sets wave size fakes (multiplies custom wave size as well) | - | 
| doshkill | dk | `<float value>` | Sets multiplier for dosh gained from killing zeds | - | 
| largezedspawnchance | lzsc | `<float value from 0 to 1>` | Sets chance for zeds to spawn as larges (in addition to default large spawns) | - |
| specialsquadcountpct | sscp | `<float value from 0 to 1>` | Sets spawn percentage for special zed squads (larges/mediums); only works if disablecustomsquadspawns is false | - |
| ammomultiplier | am | `<float multiplier>` | Sets ammo multiplier for all weapons; by default each class has own values, overriding them will set the same value for all weapon classes | - |
| disablewavesizefakes | dwsf | `<true/false>` | Disables wave size fakes system (wavesizefakes won't be taking effect) | - |
| disableventspawns | dvs | `<true/false>` | Disables zed spawns from vents and sewers | - |
| disablelargezedspawnchance | dlzsc | `<true/false>` | Disables large zed spawn chance system entirely (basically disables largezedspawnchance) | - |
| disablemaxlargemonsters | dmlm | `<true/false>` | Disables large zeds alive limit | - |
| disablecustomsquadspawns | dcss | `<true/false>` | Disables special squad spawn system entirely (disables specialsquadcountpct, returns zed spawns to vanilla spawn cycle) | - |
| disablecustomwavesize | dcws | `<true/false>` | Disables custom wave size system (turns it into vanilla wave size system) | - |
| killzeds | kz | | Kills all currently alive zeds | - |
| nextmap | nm | `<KF-MapName>` | Switches current map to a specified one | - |
| info | | | Shows settings for the current match (locally) | - |
| mystats | ms | | Shows personal stats (locally) | - |
| stats | | `<StatName>` | Shows stats for each player by category for everyone; entering the command without argument will print out available categories | - |
| lockweaponpickup | lwp | `<true/false>` | Locks the ability for other players to pick up your guns | - |
| lockotherweaponpickup | lowp | `<true/false>` | Locks the ability for you to pick up other people's guns | - |
| showweaponpickupmessages | swpm | `<true/false>` | Enables chat logging for weapon pick ups (locally). For example, if someone picks up someone else's gun, you'll be able to see it and never blame wrong people for it | - |
| weaponpickupammothreshold | wpat | `<int value from 0 to 100>` | Allows to lock empty weapons from picking up during waves by setting the ammo threshold above which a weapon couldn't be picked up (measured in %) | - |
| switchroles | sr | | Allows to switch from players to spectators and vice versa without reconnecting to the server. If a player is authorised, they can overcap player slots | - |

## Нацеленные на игрока

| Название | Сокращение | Аргументы | Описание | Уровень доступа |
| --- | --- | --- | --- | --- | 
| playerlist | pl | | Makes a list of current players with their local IDs | |
| kill | | `<target>`| Kills specified players (doesn't work during trader time) | |
| kick | | `<target>` |  Kicks players from the server (they can join back afterwards) | |
| kicksessionban | | `<target>` | Kicks players from the server without ability to join back until current session ends as if they were vote kicked | |
| friendlyfire | ff | `<target>` `<amount>` | Enables friendly fire towards specified player, where `<amount>` 0 means no FF, 1 means full FF | |
| burnplayer | bp | `<target>` `<amount>` | Applies burning effect on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second | |
| pukeplayer | pp | `<target>` `<amount>`| Applies puke effect from the bloat bile on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second | |
| playersize | ps | `<target>` `<multiplier>` | Scales the character model of specified player, where `<amount>` is a multiplier (i.e. 1 means no scaling) | |
| teleportplayer | tp | `<target>` | Teleports specified player based on where your camera view is pointed at (only flat surfaces will work) | |