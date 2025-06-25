# Management basics

## Navigating through commands

There is two ways of using commands on the servers: through [in-game chat](commands.md) and the radial menu.

A custom radial commands menu is available through pressing `J` in the game. Currently its key is forced through server-side and cannot be bound to any different hotkey. Though it's possible to rebind it through the `setbind <key> GBA_ShowVoteComms` console command, it will only work during the current session and will revert back when you re-join the server. We'll continue working on the feature and improve its functioning in future.

It has a selection of commands serving as a shortcut for those who don't want to remember or type the most used commands. Executing them through both the chat and the command selector has the same effent and is entirely equivalent.

!!! info "Note that the behaviour of some commands is [different](authoritylevels.md#authority-levels) on Vanilla and HoE+, and so is the exact selection of commands in the menu."

## Console & Customization

As mentioned [here](commands.md), all commands can be bound to any keyboard button just like any other game actions, which is done through the `say` command:

`setbind X say !pausetrader`

Apart from that, there is a useful console comamnd that's unique for all SPB-GS servers called `CorpseCleanup`. It has the same effect as `ClearCorpses` from Vanilla and [CD Chokepoints Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175), and has the same 60 seconds cooldown as the latter one.

!!! info "The `ClearCorpses` command is widely used by CD players for quick zed corpse removal, which is especially useful for Commando when extending the zed time, though is used by the rest of the perks."

If you're a CD player and actively use such commands, it's recommended to bind them both on the same button:

`setbind ThumbMouseButton2 "ClearCorpses|CorpseCleanup"`

!!! note annotate "Note"
    There's a setting in the `KFGame.ini` responsible for the maximum number of corpses displayed at one time called `MaxDeadBodies`. You might want to set it to the lowest possible value which is `4` to increase the visual clarity during gameplay without compromising image quality.
	
    * Make sure your game isn't running (no, seriously);
    * Navigate to `..\Documents\My Games\KillingFloor2\KFGame\Config`;
	* There will be the file named `KFGame.ini`;
	* Open it with Notepad, [Notepad++](https://github.com/notepad-plus-plus/notepad-plus-plus/releases), Sublime, VSCode or any other text editing software; (1)
	* Use search option (Ctrl+F) to find the needed line;
	* Change the value to `4` and save the file.
1.  I recommend using Notepad++ because it has the functionality beyond any basic needs and has massive customisation options, such as custom themes, syntaxes etc. Or just use VSCode like me.

## What commands?

There's plenty of commands available to use, but of course you don't need all of them to spend time on the servers.

But the question is, what makes the most difference in terms of difficulty?

### Max Monsters

[`!mm`](commands.md#max-monsters) or [`MaxMonsters`](commands.md#max-monsters) is responsible for a good half of the action during a match since it controls how much zeds are present on map at one time.
Vanilla 6-player match has this value capped at 32 (36 on SPB-GS), while default value for HoE+ is 56.

* The general idea of custom MaxMonsters tweaks is to be higher than vanilla but just enough to keep the good flow of enemies throughout the game.
  
* Some maps are very CQC-oriented (like most of the holdout maps for example), and some have their spawn points scattered across the area which makes the flow significantly slower (Desolation Original, Dust maps, Crystal Caverns etc.), so they might require a different approach on adjusting MaxMonsters.

* According to our experience, holdout maps like Power Core are best played at 48mm (and less) because they tend to get overly intense at a higher mm and have performance issues, while huge maps might still be comfortable enough at 64mm.

* 72mm is considered an extreme value for pub gaming and is not recommended since the game can become excessively chaotic and cause performance issues because of the amount of live creatures on map.

* By default MaxMonsters scales up with the number of __alive__ players (12 -> 36 on Vanilla and 18 -> 56 on HoE+), so keep that in mind when adjusting its value manually through commands.

* If you want to make slight adjustments to the vanilla difficulty, this is the perfect setting for you, though changing it on HoE+ will make no sense; it's already set to somewhat optimal values. Only case where it'd make sense is when there's less than 6 players and you want something specific for the current match.

* The maximum value is capped at 200 for safety reasons.

*[CQC]: Close Quarters Combat

### Special Squads

[`!sscp`](commands.md#special-squad-count-pct) or [`Special Squad Count Percentage`](commands.md#special-squad-count-pct) is your best friend in terms of difficulty adjustments when it comes to HoE+ gameplay.
This is where most of the magic happens since more Mediums and Larges essentially means more challenge. As mentioned [here](customspawns.md), this option is enabled by default on all HoE+ servers and disabled on Vanilla for obvious reasons.

* Since quality and quantity of the zeds define most of the game difficulty, you might want to adjust this setting in order for it to fit the current lobby's needs, which means as increasing the values so its lowering.

* The default values are usually enough for most of the pub players' needs, but sometimes there's enough trusted people in the lobby to raise the stakes and try something more challenging, so having 0.5-0.7 (or 50-75%) of special squads might be a good challenge.

* I encourage you to __not__ crank it up just for shits and giggles, because playing a coop game means respecting the preference of your teammates; if you happen to have higher authority level, please ask your teammates whether they want it if you're not sure about it.

* I know most of the playerbase on Precision servers, so I'm familiar with these people's performance and can tell whether it's alright to set certain settings; however you may not be like me in this regard, so you are the only person responsible for your actions; keep this in mind when changing this setting.

* While it's still technically possible to enable `!sscp` on Vanilla, I don't recommend doing this because it drastically changes the feel of the game and contradicts the whole idea of dividing the servers onto Vanilla and HoE+; you better just go on HoE+ and lower the settings there if they're too high for your liking.

### AI Difficulty

[AI Difficulty](aidifficulty.md) system is responsible for various zed presets, rounding up the final difficulty level that you can achieve on the servers.

If not enabled by default, it can be switched on by setting [`!dcad`](commands.md#disable-custom-ai-difficulty) to `false`, and adjusted with [`!ad`](commands.md#ai-difficulty) set to proper [index](aidifficulty.md#available-presets).

!!! info "As mentioned [here](aidifficulty.md#available-presets), not all presets are available on Vanilla servers for safety reasons."

* [`!dcad`](commands.md#disable-custom-ai-difficulty) set to `false` enables the system, `true` turns it off; enabled by default on Precision/HoE+ servers.

* [`!ad`](commands.md#ai-difficulty) [`<index>`](aidifficulty.md#available-presets) sets the current difficulty preset, applying changes instantly.

* Changing this setting makes the huge difference in terms of difficulty, so please be mindful of that whenever and with whoever you play.

* It is not recommended to play anything beyond [`Pivo`](aidifficulty.md#ai-difficulty-presets) if there's no proper lobby for it, especially if there's less than 6 players, because that's one way to end up wiped out relentlessly. Note my words.

### Zed Quantity Adjustments

Another way of tweaking the difficulty is to change the [wave size](commands.md#wave-size).

!!! note "Note"
    Do not crank up this setting to the extreme values! It can make the game unplayable, especially if the ammo count and the amount of zeds won't match.

	If you happen to change it, at least do it together with [ammo multiplier](commands.md#ammo-multiplier).

* In the Vanilla HoE game there's `321` zed on waves 9-10;

* On Precision/HoE+ servers this value is `360`, which is similar to the zed count in a 9-player match;

* In the Vanilla game with 36mm and the default wave size matches take up to `40-45` mins, while on Precision-servers with 56mm and higher wave size matches last for about `30-35` mins;

* Based on that, we can tell that the ratio between MaxMonsters and wave size directly affects the match duration;

* On the Precision servers we went for such an experience that would provide engaging and fun experience, but not too long and exhausting;

* Thus, you should consider how manual tweaks will affect the flow of the game and how comfortable it's gonna play in a long-term.