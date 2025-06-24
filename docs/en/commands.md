# Chat Commands

List of all available commands.

!!! info "Important things to know:"

    * All commands execute through the game chat (not console!) and start with the prefix `!`;

    * It's possible to execute a command through the console if you type it as a `say` command, i.e. `say !info`;

    * It's also possible to bind a chat command to a hotkey just like any other console commands, for example: `setbind X say !info`;

    * Setting the incorrect value will revert the command to its default value set in the server configs;

    * Setting any command to `0` will also revert it back to its default value from the configs;

    * Upon entering a command it will execute instantly if you have sufficient [authority level](authoritylevels.md), otherwise will start a vote for applying if it's accessible for voting;
	
	* Currently all tweaks done through chat commands reset back to default once match ends, however `boolean` commands might retain their value until server reastart; keep that in mind when changing any of those settings.

## Public

These commands are available for everyone to use without any limitations.

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| [](){ #info }info | | | Shows settings for the current match; only visible to you |
| [](){ #my-stats }mystats | ms | | Shows personal stats of the current match; only visible to you |
| [](){ #stats }stats | | `<StatName>` | Shows stats for each player by category for everyone; enter without argument to print out available categories or look them up [here](#available-stats) |
| [](){ #switch-role }switchrole | sr | | Switches your role from players to spectators or vice versa without reconnecting to the server; Admins can overcap slots above 6 players |
| [](){ #lock-weapon-pickup }lockweaponpickup | lwp | `<true/false>` | Locks the ability for other players to pick up your guns |
| [](){ #lock-other-weapon-pickup }lockotherweaponpickup | lowp | `<true/false>` | Locks the ability for you to pick up other people's guns |
| [](){ #show-weapon-pickup-messages }showweaponpickupmessages | swpm | `<true/false>` | Enables personal chat logging for weapon pick ups. For example, you can see if someone picks up your or someone else's gun |
| [](){ #weapon-pickup-ammo-threshold }weaponpickupammothreshold | wpat | `<int value from 0 to 100>` | Locks empty weapons from picking up during waves by setting the ammo threshold below which weapons can't be picked up (measured in %) |
| [](){ #disable-item-drop }disableitemdrop  | dit | `<true/false>` | If `true`, prevents items from dropping into Steam inventory on match end; enable if you feel tired from receiving unnecessary stuff into your inventory |

!!! info "Commands related to spare guns and item drops will save locally into your configs, so make sure to not have them in `read-only` mode in order for them to work properly."

??? question "How weapon pickup system works?"

    Weapon locking system is designed for better spare weapon management when playing on public servers
	since many clueless people tend to not understand that they're not supposed to pick up or sell other
	people's weapons.
	
	* By default everyone can pick up everyone else's weapons;
	
	* Once `!lwp` is set to `true`, no one is able to pick up your guns anymore;
	
	* `!lowp` set to `true` prevents you from picking up other people's guns when you accidentally stumble across them;
	
	* `!swpm` set to `true` is useful for seeing who picked up whose guns, though we kept this feature disabled by default because not everyone wants to see such messages each and every time;
	
	* `!wpat` set to `5`-`10` prevents your empty or almost empty guns from being picked up accidentally by yourself when you swap to a spare gun in a heat of a battle (doesn't apply to trader time);
	
	* Keep in mind that if you accidentally dropped an empty gun, but then changed your mind because you found an ammo box, you won't be able to pick it up again until you set `!wpat` back to `0`.
	
[](){ #available-stats }
??? note "Available stats"
	
	Here's the list of arguments for the `!stats` command that have long and short names:
	
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

## Utility

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| [](){ #pause-trader }pausetrader | pt | | Temporarily pauses trader time; lasts 180 seconds and then auto-resumes |
| [](){ #unpause-trader }unpausetrader | upt | | Resumes trader time |
| [](){ #skip-trader }skiptrader | st | | Skips trader time; not available for voting because vanilla skip trader option exists |
| [](){ #kill-zeds }killzeds | kz | | Kills 5 alive zeds; has 180s long usage cooldown. Use when need to kiil stuck zeds on certain maps |
| [](){ #next-map }nextmap | nm | `<KF-MapName>` | Instantly switches current map to the specified one |
| [](){ #set-current-wave }setcurrentwave | scw | `<number>` | Starts a wave specified by its number |
| [](){ #end-wave }endwave | ew | | Ends current wave |
| [](){ #next-wave }nextwave | nw | `<number>` | Sets next wave to the specified one |
| [](){ #map-vote }mapvote | mv | | Forces end of current match and enables map selection vote |
| [](){ #set-password }setpassword | spw | `<password>` | Sets temporary password for the current match; resets to `none` when entered without an argument or when match ends |

??? example "List of true map names used with `!nm` command"

    !!! info "Keep in mind that map names are not case sensitive and can be written in both lower and upper case."

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

## Difficulty

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| [](){ #max-monsters }maxmonsters | mm | `<integer value>` | Defines how much alive zeds can be present on map at once; hence why is referred to as [`MaxMonsters`](https://wiki.killingfloor2.com/index.php?title=Survival_Mode#Maximum_ZEDs_At_Time), same with [CD](https://github.com/notblackout/kf2-controlled-difficulty/blob/master/options.md#maxmonsters) |
| [](){ #wave-size }wavesize | ws | `<integer value>` | Sets custom number of zeds to spawn per wave; not recommnded for manual tweaking because it overrides the numbers for all waves |
| [](){ #disable-custom-wave-size }disablecustomwavesize | dcws | `<true/false>` | Disables custom wave size system defined by `!wavesize`; if set to `true`, wave lengths will fall back to vanilla |
| [](){ #wave-size-fakes }wavesizefakes | wsf | `<integer value>` | (Deprecated) Sets [wave size fakes](#fakes-def); applies to custom wave size as well |
| [](){ #disable-wave-size-fakes }disablewavesizefakes | dwsf | `<true/false>` | (Deprecated) Disables wave size fakes system; if set to `true`, wavesizefakes won't take effect |
| [](){ #wave-size-multiplier }wavesizemultiplier | wsm | `<float multiplier>` | Multiplies the amount of zeds per each wave; respects the initial wave size, and so is useful for adjusting zed count without breaking the flow of the match |
| [](){ #cohort-size }cohortsize | cs | `<integer value>` | Also referred to as `AI Spawn At Once`; defines how much zeds are spawned simultaneously per each tick; if set to 8, 8 zeds will spawn each second |
| [](){ #dosh-kill }doshkill | dk | `<float multiplier>` | Sets multiplier for dosh gained from killing zeds; in a normal game the value is changed dynamically throughout the game, so it makes little to no sense to tweak it manually |
| [](){ #ammo-multiplier }ammomultiplier | am | `<float multiplier>` | Sets ammo multiplier for all weapons; by default each class has own values, overriding them will set the same value for all weapon classes |
| [](){ #special-squad-count-pct }specialsquadcountpct | sscp | `<float value from 0 to 1>` | Sets spawn percentage for [special zed squads](customspawns.md#special-squad-count-pct-def) (Larges/Mediums); only works if [`disablecustomsquadspawns`](#disable-custom-squad-spawns) is set to `false` |
| [](){ #disable-custom-squad-spawns }disablecustomsquadspawns | dcss | `<true/false>` | Disables special squad spawn system entirely; if set to `true`, returns zed spawns to vanilla spawn cycle |
| [](){ #large-zed-spawn-chance }largezedspawnchance | lzsc | `<float value from 0 to 1>` | Sets [chance](customspawns.md#large-zed-spawn-chance-def) for zeds to spawn as larges; works additively on top of any existing spawn systems |
| [](){ #disable-large-zed-spawn-chance }disablelargezedspawnchance | dlzsc | `<true/false>` | Disables large zed spawn chance system; if set to `true`, disables `largezedspawnchance` |
| [](){ #disable-vent-spawns }disableventspawns | dvs | `<true/false>` | Disables zed spawns from vents and sewers |
| [](){ #disable-max-large-monsters }disablemaxlargemonsters | dmlm | `<true/false>` | (Deprecated) Disables large zeds alive limit which works similarly to `MaxMonsters` but for larges only; relies on pre-defined values in server configs |
| [](){ #ai-difficulty }aidifficulty | ad | `<index>` | Sets currently active preset for the AI Difficulty system |
| [](){ #disable-custom-ai-difficulty }disablecustomaidifficulty | dcad | `<true/false>` | Disables AI Difficulty system entirely, preventing [`!ad`](#ai-difficulty) from working |

!!! info "Term [](){ #fakes-def }[fakes](#wave-size-fakes) stands for a system that imitates a certain amount of players without them actually being in a match; basically 5 fakes means the game will act as if there were 5 players regardless of how many actual players there actually is."

## Player-targeted

Used by Admin, Moderator and Helper [roles](authoritylevels.md) for managing players on server.

These commands won't work on those players who are logged in as server admins.

!!! warning "Highest authority level (Admin) is not equal to being logged in as server admin, so most of the player-targeted commands will work on any players regardless of their authority level unless they're logged in as server admin."

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| [](){ #player-list }playerlist | pl | | Prints out a list of current players with their local IDs |
| [](){ #kill }kill | | `<target>` | Kills specified player (doesn't work during trader time) |
| [](){ #kick }kick | | `<target>` | Kicks player from the server (they can join back afterwards) |
| [](){ #kick-session-ban }kicksessionban | | `<target>` | Kicks player from the server without ability to join back until current session ends as if they were vote kicked |
| [](){ #friendly-fire }friendlyfire | ff | `<target>` `<amount>` | Enables friendly fire towards specified player, where `<amount>` 0 means no FF, 1 means full FF; if player dies the value resets back to `0` |
| [](){ #burn-player }burnplayer | bp | `<target>` `<amount>` | Applies burning effect on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second |
| [](){ #puke-player }pukeplayer | pp | `<target>` `<amount>` | Applies puke effect from the bloat bile on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second |
| [](){ #player-size }playersize | ps | `<target>` `<multiplier>` | Scales the character model of specified player, where `<amount>` is a multiplier (i.e. 1 means no scaling) |
| [](){ #teleport-player }teleportplayer | tp | `<target>` | Teleports specified player based on where your camera view is pointed at (only flat surfaces will work) |

!!! info "Player-targeted commands"

    Commands with `<target>` argument can take few different types of values:
	
	* numeric `index` of player that's returned by `!pl` command;
	
	* `me` or `self`;
	
	* `all`.

## Usage examples

!!! example "Examples by value type"

    === "Integer"

	    * __`!ad 3`__

        * `!mm 48`

        * __`!wavesize 160`__

    === "Float"

	    * __`!sscp 0.5`__

        * __`!lzsc 0.05`__

	    * __`!ammomultiplier 2.5`__

    === "Boolean"

	    * __`!dcad false`__

        * __`!dlzsc true`__

	    * __`!lockweaponpickup false`__

    === "String/Enum"

	    * __`!nm kf-nuked`__

	    * __`!stats hsacc`__

        * __`!spw penis228`__

    === "Multi-value"

	    * __`!friendlyfire all 0.5`__

	    * __`!bp 128 5`__

        * __`!kill me`__
