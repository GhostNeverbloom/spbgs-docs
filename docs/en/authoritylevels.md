# Authority Levels

## Basics

All chat commands work under the authority level system. This is how it works:

* All commands have certain level of authority needed for them to be executed;

* Overall there's 4 authority levels: `Player`, `Helper`, `Moderator` and `Admin`;

* Each next level (or role) includes the authority rights of the previous role, making the `Moderator` above `Helper` and `Admin` above both of them;

* Certain commands, if executed by a role lower than required, will instead start a vote for applying that command;

* The authority level requirements for each command can be different depending on which server they're used on;

* More detailed info on command groups you can find [below](#command-grouping).

[](){ #command-grouping }
## Command grouping

For safety reasons the accessibility of certain commands is different across the servers. Here's the actual list of commands and their properties:

| Command | Min. Authority (Vanilla) | Min. Authority (HoE+) | Votable (Vanilla) | Votable (HoE+) |
| --- | --- | --- | --- | --- |
| [!info](commands.md#info) | Player | Player | - | - |
| [!ms](commands.md#my-stats) | Player | Player | - | - |
| [!stats](commands.md#stats) | Player | Player | - | - |
| [!sr](commands.md#switch-role) | Player, Admin | Player, Admin | - | - |
| [!lwp](commands.md#lock-weapon-pickup) | Player | Player | - | - |
| [!lowp](commands.md#lock-other-weapon-pickup) | Player | Player | - | - |
| [!swpm](commands.md#show-weapon-pickup-messages) | Player | Player | - | - |
| [!wpat](commands.md#weapon-pickup-ammo-threshold) | Player | Player | - | - |
| [!dit](commands.md#disable-item-drop)  | Player | Player | - | - |
| [!pt](commands.md#pause-trader) | Helper | Helper | `True` | `True` |
| [!upt](commands.md#unpause-trader) | Helper | Helper | `True` | `True` |
| [!st](commands.md#skip-trader) | Helper | Helper | `False` | `False` |
| [!kz](commands.md#kill-zeds) | Helper | Helper | `True` | `True` |
| [!nm](commands.md#next-map) | Helper | Helper | `True` | `True` |
| [!mv](commands.md#map-vote) | Moderator | Moderator | `True` | `True` |
| [!spw](commands.md#set-password) | Helper | Helper | `False` | `False` |
| [!mm](commands.md#max-monsters) | Helper | Helper | `True` | `True` |
| [!ws](commands.md#wave-size) | Moderator | Moderator | `False` | `False` |
| [!dcws](commands.md#disable-custom-wave-size) | Moderator | Moderator | `False` | `False` |
| [!wsf](commands.md#wave-size-fakes) | Moderator | Moderator | `False` | `False` |
| [!dwsf](commands.md#disable-wave-size-fakes) | Moderator | Moderator | `False` | `False` |
| [!wsm](commands.md#wave-size-multiplier) | Helper | Helper | `True` | `True` |
| [!cs](commands.md#cohort-size) | Helper | Helper | `False` | `True` |
| [!dk](commands.md#dosh-kill) | Helper | Helper | `False` | `False` |
| [!am](commands.md#ammo-multiplier) | Helper | Helper | `True` | `True` |
| [!sscp](commands.md#special-squad-count-pct) | Moderator | Helper | `False` | `True` |
| [!dcss](commands.md#disable-custom-squad-spawns) | Moderator | Moderator | `False` | `False` |
| [!lzsc](commands.md#large-zed-spawn-chance) | Moderator | Moderator | `False` | `True` |
| [!dlzsc](commands.md#disable-large-zed-spawn-chance) | Moderator | Moderator | `False` | `True` |
| [!dvs](commands.md#disable-vent-spawns) | Helper | Helper | `True` | `True` |
| [!dmlm](commands.md#disable-max-large-monsters) | Moderator | Moderator | `False` | `False` |
| [!ad](commands.md#ai-difficulty) | Moderator | Helper | `True` | `True` |
| [!dcad](commands.md#disable-custom-ai-difficulty) | Moderator | Helper | `True` | `True` |
| [!pl](commands.md#player-list) | Player | Player | - | - |
| [!kill](commands.md#kill) | Moderator | Moderator | `False` | `False` |
| [!kick](commands.md#kick) | Helper | Helper | `True` | `True` |
| [!kicksessionban](commands.md#kick-session-ban) | Helper | Helper | `True` | `True` |
| [!ff](commands.md#friendly-fire) | Moderator | Moderator | `True` | `True` |
| [!bp](commands.md#burn-player) | Moderator | Moderator | `False` | `False` |
| [!pp](commands.md#puke-player) | Moderator | Moderator | `False` | `False` |
| [!ps](commands.md#player-size) | Moderator | Moderator | `False` | `False` |
| [!tp](commands.md#teleport-player) | Helper | Helper | `False` | `False` |
