# Custom Spawns

[](){ #special-squad-count-pct-def }[Special Squad Count Percentage](commands.md#special-squad-count-pct) (or Custom Spawn System) was designed in order to implement harder yet highly flexible difficulty system to create more challenging experience across all HoE+ servers. This is the former feature of HoE+ mode which makes the most difference in terms of difficulty.

By default, servers #05.1, #06, #07 and #08 have custom spawn system enabled.

Related commands:

* [`!specialsquadcountpct`](commands.md#special-squad-count-pct) or [`!sscp`](commands.md#special-squad-count-pct)

* [`!disablecustomsquadspawns`](commands.md#disable-custom-squad-spawns) or [`!dcss`](commands.md#disable-custom-squad-spawns)

## How it works?

Basically custom spawns combine features of [vanilla spawn system](https://wiki.killingfloor2.com/index.php?title=ZED_Spawning) and [Controlled Difficulty](https://github.com/notblackout/kf2-controlled-difficulty/blob/master/spawn.md), taking advantages of both to create a unique yet familiar experience.

Main differences:

* The base of the system is very much like vanilla, i.e. there are normal and special squads which are spawned in a certain way;

* Unlike vanilla, the spawn cycle is built upon a certain ratio between normal and special squads which is defined by [`special squad count percentage`](commands.md#special-squad-count-pct);

* Unlike CD, the order of squads within spawn cycle is random, which makes the difficulty curve less predictable but consistent enough for enjoyable experience;

* Since special squads mostly consist of Larges and Mediums, adjusting the percentage of special squads controls the ratio between all types of zeds which defines the core difficulty of the game;

* Each wave has its own pre-defined normal and special squads, meaning that each wave has essential limits to the zed type quantity;

* By setting `!sscp` to the minimal value (0.01) it's possible to achieve the experience similar to vanilla (10% of Larges on wave 10), while the maximum value (1.0) will end up in ~29-30% of larges which is close to CD's `ts_mig_v3` spawn cycle.

## How to use?

Adjustments of custom spawns are done via [`!specialsquadcountpct`](commands.md#special-squad-count-pct) or [`!sscp`](commands.md#special-squad-count-pct) command.

The default values for HoE+ servers vary from `0.1` (10%) to `0.3` (30%) which I found to be optimal values for balanced experience for each of the servers.

The values around `0.5`-`0.75` are suitable for challenging experience in a lobby where most of the players are familiar enough with precision/CD gameplay, while `1.0` will be even less forgivable.

Examples:

* `!sscp 0.15`

* `!sscp 0.5`

* `!sscp 1`

Any value above `1` will make no difference, while `0` will set the value to the one set by default in the server configs depending on which server it's used on. Due to the tech limitations it's impossible to set the value to `0` manually, so the closest you can do without disabling the feature is to set it to `0.01`. Otherwise, [`!dcss`](commands.md#disable-custom-squad-spawns) will do the thing.

[`disablecustomsquadspawns`](commands.md#disable-custom-squad-spawns), if set to `true`, disables the system entirely, making the spawn cycle purely vanilla.

## Extra features

Apart from modified spawn cycle, there are other ways of affecting difficulty through spawns, [`large zed spawn chance`](commands.md#large-zed-spawn-chance) system for example. 

[](){ #large-zed-spawn-chance-def }[`Large zed spawn chance`](commands.md#large-zed-spawn-chance) is a system that allows to spawn Larges (Scrakes and Fleshpounds) by replacing random zeds upon their spawn.

How it works:

* Once enabled through [`!dlzsc`](commands.md#disable-large-zed-spawn-chance) set to `false`, replaces random Trash or Medium zeds with Larges with a 60:40 ratio (60% of Scrakes and 40% of Fleshpounds);

* The chance is adjusted through [`!lzsc`](commands.md#large-zed-spawn-chance) command which takes up `float` value from `0` to `1`;

* The trigger rate for the chance is defined through server configs and is equal to 0.5 ticks per second (or 1 tick per 2 seconds) in a 6-player match;

* The system is disabled by default, because it was replaced by [Special Squad Count Percentage system](#special-squad-count-pct-def) eventually, however it's still usable and works additively on top of [SSCP](#special-squad-count-pct-def);

* Due to fundamental differences in spawn methods this one has more consistent flow of larges throughout the wave, yet can cause enough troubles for survivors to keep staying alive;

* It is not recommended to use this feature especially with high `!sscp` values becaue it can create abnormal amount of larges which very few player teams can handle;

* According to the practice, values around `0.05`-`0.1` together with `!sscp 0.3` already give a decent amount of larges, making this borderline useable in a normal match;

* There's [Max Large Monsters](commands.md#disable-max-large-monsters) feature that can limit the concurrent amount of alive Larges on map that was meant to be used with [`!lzsc`](commands.md#large-zed-spawn-chance), but it ended up being scrapped as well.

## Vent Spawns

Vanilla game has a feature where zeds can spawn through vents and sewers. Usually it's Clots, Crawlers and Stalkers. Most of the vanilla maps designed in such a way that they enagage players into kiting playstyle, making zeds spawn from almost every corner. In certain cases so-called `vent spawns` are responsible for this kind of spawn behaviour. It is possible to disable this type of spawn points which doesn't affect the flow of the map but greatly improves the quality of holdout-type of gampelay.

[`!disableventspawns`](commands.md#disable-vent-spawns) or [`!dvs`](commands.md#disable-vent-spawns) set to `true` will disable this behaviour, making some holdout spots on maps much more viable for holding. It is set to `true` by default on all HoE+ servers.
