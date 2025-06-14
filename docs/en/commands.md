# Commands

List of all available commands.

Important things to know:

* All commands execute through the game chat (not console!) and start with a prefix `!`;

* It's possible to execute a command through the console if you type it as a `say` command, i.e. `say !info`;

* It's also possible to bind a command to a hotkey just like any other commands, for example: `setbind X !info`;

* Setting the incorrect value will revert the command to its default value set in the server configs;

* Setting any command to `0` will also revert it back to its default value from the configs;

* Upon entering command it will execute instantly if you have sufficient authority role, otherwise will start a vote for applying if it's accessible for voting.

## Public

These commands are available for everyone to use without any limitations.

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| info | | | Shows settings for the current match; only visible to you |
| mystats | ms | | Shows personal stats of the current match; only visible to you |
| stats | | `<StatName>` | Shows stats for each player by category for everyone; enter without argument to print out available categories or look them up here |
| switchroles | sr | | Switches your role from players to spectators or vice versa without reconnecting to the server. Admins can overcap slots above 6 players |
| lockweaponpickup | lwp | `<true/false>` | Locks the ability for other players to pick up your guns |
| lockotherweaponpickup | lowp | `<true/false>` | Locks the ability for you to pick up other people's guns |
| showweaponpickupmessages | swpm | `<true/false>` | Enables personal chat logging for weapon pick ups. For example, you can see if someone picks up your or someone else's gun |
| weaponpickupammothreshold | wpat | `<int value from 0 to 100>` | Lock empty weapons from picking up during waves by setting the ammo threshold above which weapons can't be picked up (measured in %) |
| disableitemdrop  | dit | `<true/false>` | If `true`, prevents items from dropping into Steam inventory on match end; enable if you feel tired from receiving unnecessary stuff into your inventory |

* Commands related to spare guns and item drops will save locally into your configs, so make sure to not have them in `read-only` mode in order for them to work properly.

## Utility

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| pausetrader | pt | | Temporarily pauses trader time; automatically resumes after 2 minutes of idle |
| unpausetrader | upt | | Resumes trader time |
| skiptrader | st | | Skips trader time; not available for voting because vanilla skip trader option exists |
| killzeds | kz | | Kills 5 alive zeds; has 180s long usage cooldown. Use when need to kiil stuck zeds on certain maps |
| nextmap | nm | `<KF-MapName>` | Switches current map to a specified one instantly |
| mapvote | mv | | Forces end of current match and enables map selection vote |
| setpassword | spw | `<password>` | Sets temporary password for the current match; resets to `none` when entered without an argument or when match ends |

## Difficulty

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| maxmonsters | mm | `<integer value>` | Defines how much alive zeds can be present on map at once; hence why is referred to as `MaxMonsters` |
| wavesize | ws | `<integer value>` | Sets custom number of zeds to spawn per wave; not recommnded for manual tweaking because it overrides the numbers for all waves |
| disablecustomwavesize | dcws | `<true/false>` | Disables custom wave size system defined by `!wavesize`; if set to `true`, wave lengths will fall back to vanilla |
| [](){ #fakes-def-sheet }wavesizefakes | wsf | `<integer value>` | [Deprecated] Sets [wave size fakes](#fakes-def); applies to custom wave size as well |
| disablewavesizefakes | dwsf | `<true/false>` | [Deprecated] Disables wave size fakes system; if set to `true`, wavesizefakes won't take effect |
| wavesizemultiplier | wsm | `<float multiplier>` | Multiplies the amount of zeds per each wave; respects the initial wave size, and so is useful for adjusting zed count without breaking the flow of the match |
| cohortsize | cs | `<integer value>` | Also referred to as `AI Spawn At Once`; defines how much zeds are spawned simultaneously per each tick; if set to 8, 8 zeds will spawn each second |
| doshkill | dk | `<float value>` | Sets multiplier for dosh gained from killing zeds; in a normal game the value is dynamic, so it makes little to no sense to tweak it manually |
| ammomultiplier | am | `<float multiplier>` | Sets ammo multiplier for all weapons; by default each class has own values, overriding them will set the same value for all weapon classes |
| [](){ #special-squad-count-pct }specialsquadcountpct | sscp | `<float value from 0 to 1>` | Sets spawn percentage for [special zed squads](customspawns.md#special-squad-count-pct-def) (larges/mediums); only works if [`disablecustomsquadspawns`](#disable-custom-squad-spawns) is set to `false` |
| [](){ #disable-custom-squad-spawns }disablecustomsquadspawns | dcss | `<true/false>` | Disables special squad spawn system entirely; if set to `true`, returns zed spawns to vanilla spawn cycle |
| [](){ #large-zed-spawn-chance }largezedspawnchance | lzsc | `<float value from 0 to 1>` | Sets [chance](customspawns.md#large-zed-spawn-chance-def) for zeds to spawn as larges; works additively on top of any existing spawn systems |
| [](){ #disable-large-zed-spawn-chance }disablelargezedspawnchance | dlzsc | `<true/false>` | Disables large zed spawn chance system; if set to `true`, disables largezedspawnchance |
| [](){ #disable-vent-spawns }disableventspawns | dvs | `<true/false>` | Disables zed spawns from vents and sewers |
| [](){ #disable-max-large-monsters }disablemaxlargemonsters | dmlm | `<true/false>` | Disables large zeds alive limit which works similarly to `MaxMonsters` but for larges only; relies on pre-defined values in server configs |

* Term [](){ #fakes-def }[`fakes`](#fakes-def-sheet) stands for a system that imitates a certain amount of players without them actually being in a match; basically 5 fakes means the game will act as if there were 5 players regardless of how many actual players there actually is.

## Player-targeted

Used by Admin and Moderator roles for managing players on server.

These commands won't work on those players who are logged in as server admins.

`Note`: authorized chat command access is not equal to being admin.

| Name | Shortcut | Arguments | Description |
| --- | --- | --- | --- |
| playerlist | pl | | Prints out a list of current players with their local IDs |
| kill | | `<target>`| Kills specified players (doesn't work during trader time) |
| kick | | `<target>` |  Kicks players from the server (they can join back afterwards) |
| kicksessionban | | `<target>` | Kicks players from the server without ability to join back until current session ends as if they were vote kicked |
| friendlyfire | ff | `<target>` `<amount>` | Enables friendly fire towards specified player, where `<amount>` 0 means no FF, 1 means full FF |
| burnplayer | bp | `<target>` `<amount>` | Applies burning effect on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second |
| pukeplayer | pp | `<target>` `<amount>`| Applies puke effect from the bloat bile on the specified player that lasts 10 seconds, where `<amount>` is the exact value of damage per second |
| playersize | ps | `<target>` `<multiplier>` | Scales the character model of specified player, where `<amount>` is a multiplier (i.e. 1 means no scaling) |
| teleportplayer | tp | `<target>` | Teleports specified player based on where your camera view is pointed at (only flat surfaces will work) |

## Usage examples

Integer value commands:

* `!mm 48`

* `!wavesize 160`

Float value commands:

* `!sscp 0.5`

* `!ammomultiplier 2.5`

Boolean value commands:

* `!dlzsc true`

* `lockweaponpickup false`

Enum value commands:

* `!nm kf-nuked`

* `!stats hsacc`

Multi-value commands:

* `!friendlyfire all 0.5`

* `!bp 128 5`

Just testing annotations here. (1)
{ .annotate }

1.  Fucking anootations don't work in data tables! Uh-oh!