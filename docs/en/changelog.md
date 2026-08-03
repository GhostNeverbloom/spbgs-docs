# Updates & Patch Notes

This is where you can find the changelogs for the latest updates starting from May 2026.

## August 1, 2026

This update includes several bug fixes and some new content, new starting weapons on HoE+ servers to be precise. 

Some features were rolled out in advance for testing purposes, but now all planned content is fully rolled out.

### Bug Fixes and Balance Changes

* Fixed a bug that caused SWAT grenade to disappear during the game due to it not being set by default;

* SWAT's ^^"Close Combat Training"^^ skill now provides dual 9mm pistols at the start of the match as it's supposed to;

* Ammo disappearance after wave completion due to bugged ammo multiplier was finally defeated (I hope so); 

- [HoE+] Support perk changes:

    * Projectile speed of perk weapons during ZED time is now 3 times faster;

    * ^^"Fortitude"^^ skill on level 10 (left) now gives +25% health bonus instead of 50%, damage resistance remained untouched, and teammates in the proximity of 15 meters also recieve 10% damage resistance if they wear any armor;

    * ^^"Salvo"^^ skill on level 10 (right) was replaced with ^^"Resupply Pack"^^ skill, while its damage bonus was transfered into respective passive skill;

    * ^^"Armor Piercing Shot"^^ skill on level 15 (left) now gives 15% damage bonus;

    * ^^"Resupply Pack"^^ skill's place was filled with brand new skill called ^^"High Impact Rounds"^^: hits with perk weapons will slow zeds down by 20%. Head and weak spot shots apply it twice as fast;

    * ^^"Tactical Armor"^^ skill on level 25 (left) now regenerates 2 health points per second instead of one, and its effective radius is extended up to 15 meters. The rest of the bonuses were reworked in such a way that player's movement speed, weapon swap and reload speed are now 2.5x faster (or 50% of real-time).

### Important Tech Update

There has been made a small but quite significant change with the recent update: there's now strict FPS limit which doesn't allow to go above 240 frames per second when playing on the servers.

??? info "Why and for what purpose?"
    
    KF2's inner architecture has a number of flaws, the most noticeable of them might be dependence between FPS and time flow during game. TLDR: the more FPS the more your game appears broken. Going even beyond 60 FPS heavily affects recoil/fire rate of the weapons, at around 200 FPS your game can "eat" messages, 300 FPS make some weapons' recoil non-existent, and 500+ FPS totally break guns to a degree that they fire and reload much faster during ZED time, which is obviously beyond all bounds of decency and shouldn't be allowed to begin with.

    More detailed info about it can be found here: [ZSDR](https://www.zsdr.org/index.php/2024/06/29/quantifying-the-kf2-recoil-rate-of-fire-reloads-on-fps-dependency/)

    Since this is technically an exploit of a flaw that developers have chosen to leave unattended, a hardcore part of KF2 community came up with an unspoken rule to limit their FPS in KF2 in solidarity and somewhat honesty towards each other. However, as you may have guessed, unspoken rules tend to be broken and abused very easily, which some of the players surely did. In this regard, I made a decision to set a strict FPS limit on the server side instead of making unspoken rules and exposing those who abuse high FPS.

    Smaller KF2 communities came to an agreement to not go beyond 165 FPS, but since these are public servers mostly aimed at a casual audience, I tried finding a spot in between which ended up lying around 240 FPS. This value doesn't allow to break the game to a degree where it becomes straight up blatant cheating, while players with high refresh rate monitors can still enjoy their comfort zone.

Since this change is an attempt to fight the exploit of the vanilla game, from now on this FPS limit is a strict rule on the servers, and whoever caught going beyond it despite server side limitation is considered a cheater, which means I will apply the same measures onto them (ban them permanently to be specifically).

### Old & New Weapons

<video autoplay loop muted playsinline>
<source src="http://eyesdeep.blue/videos/KF2_SPBCW_001_Demo_002.mp4" type="video/mp4">
</video>

HoE+ servers (#05.1, #06, #07, #07.1, #08, #23 and #24) now recieved a number of new and few old reworked weapons which you can choose before the start of the game: 

* ^^STM-9^^ Carbine for the Commando - AR-15's counterpart, with slightly less damage but slightly more mag capacity;

* ^^TX-15 DML^^ for the Sharpshooter - Light Marksman Carbine with weaker ammo, but higher trash clearing potential on early waves;

* Dual ^^Makarov 6P9^^ pistols for the Gunslinger - for those who had enough of Wild West larping on early waves;

* ^^Sawed-Off Double-Barrel Shotgun^^ for the Support - same old Two Barrels, just shorter. Still capable though;

* ^^HRG USP-45^^ Pistol for the Field Medic - a handgun that kills at least anything apart from the desire to play this perk;

* Chiappa Rhino pistols were moved into tier 1, now they're one of the starting weapons. So they've been rebalanced for this purpose, frag bullets were removed as well as weird-ass red dot sights, and also their missing reload SFX were fixed;

* SWAT's Mac-10 SMG was also moved into starting weapon tier, and rebalanced respectively;

* Support's Mossberg 500 shotgun recieved a choice of ammo types between regular buckshot rounds and flechette rounds; latter ones have more spread, less damage and higher penetration power which makes it more effective against large groups of trash zeds. It also recieved higher rate of fire and reload speed.

Currently all these weapons were added exclusively on HoE+ servers, but if the feedback from the players will be positive I might also add them onto vanilla servers too. I personally think that the new content is always a good thing, especially in such an old and stale game like ours.

## June 17, 2026

A hotfix prior to a larger update that's coming soon.

* Fixed an issue that caused ammo muliplier to reset after manual adjustments through [`!ammomultiplier`](commands.md#ammo-multiplier) command;

* Fixed an issue that allowed perk skills to work despite them being locked under low level;

* Stats for the new [Saiga-12](changelog.md#saiga12-announcement) have been fully reverted to the Vanilla values since they weren't quite justified and originally came over from HoE+ balance system.

- [HoE+] Gunslinger's Glock 18C pistol got a rework:

    * Animations were replaced with the better ones taken from other pistols;

    * Recoil and bullet spread were reworked so that the accuracy is more relied on spray control rather than random spread;

    * Firing rate and damage were changed according to the new recoil so that it's more balanced in terms of time to kill of [large] zeds farther down range;

    * Weight points were reduced to `3` for the single version and `6` for the dual wielded one.

Known issues:

* XP gain progress doesn't show up mid game and is only visible after match ends;

* SWAT's ^^"Close Combat Training"^^ skill doesn't provide dual 9mm pistols at the start of the match.

Upcoming balance changes:

* [HoE+] Increased projectile speed for Support's weapons during ZED time and in real-time;

* [HoE+] Next iteration of Support's skill rebalance aimed towards better diversity between builds depending on the play style.

## May 31, 2026

This hotfix solves few bugs and does some rebalance to the previously made changes.

* Fixed an issue that allowed players to swap perk skills mid wave.

* [HoE+] Fixed reload speed adjustment system on SPX 464 Centerfire for the Sharpshooter perk.

* [HoE+] All shotguns have recieved their vanilla penetration values back (`2`), which means they can penetrate up to 2 zeds at once; this has been reverted since it doesn't affect the gameplay in a bad way as long as there's no penetration bonuses on top of that from the Support perk itself.

* [HoE+] Support's passive [skill](changelog.md#armor-regen-passive) which allowed players to regenerate armor during ZED time is now an active skill on level 25 (left) and replaces [^^"Sleight of Hand"^^](changelog.md#support-sleightofhand) skill; now it's called ^^"Tactical Armor"^^ and regenerates 15 armor points instantly once ZED time is triggered, then gives 1 armor point per second to the Support themselves and their teammates in a radius of 8 meters for the duration of ZED time. It also allows to move and swap perk weapons 4x faster during ZED time (80% of real-time). So I guess it's time to do some armor delivery job, huh?

* [HoE+] Support's [^^"Barrage"^^](changelog.md#support-barrage) skill on level 25 (right) now allows to shoot and reload in real-time during ZED time.

* Fixed an issue that caused [KS-23](changelog.md#ks23-announcement)'s flashbang projectile to not automatically detonate after travelling specified distance, and its maximum travelling distance is changed from 15 to 20 meters.

* Damage and stumble power for the [KS-23](changelog.md#ks23-announcement) is now increased, as well as the stun power of its flashbang round; now large zeds can be stunned with just one flashbang round.

* Reload speed for the [KS-23](changelog.md#ks23-announcement) increased by 25%, and its swap animations are 2x faster.

* [HoE+] Support's starting shotgun Mossberg 500 recieved 20% damage increase, slight bonus to the firing rate and accuracy/spread debuff, which allows using the gun for splash damaging small zeds way more effective.

* [HoE+] Support's Dual HRG Buckshot Revolvers recieved slight reload speed bonus (`+15%` instead of `+10%`). They're cool by the way! At a 5 meters range though.

* [HoE+] Applied more balance adjustments to the weapon upgrades for the Support perk so that they'd work better in loadouts.

* Fixed [stats website](http://stats.eyesdeep.blue) which was broken after the update due to the new perk system.

It's possible that I'll add a passive skill for quicker swap between Support's weapons on HoE+, but only playtests will show whether that's needed or not.

## May 26, 2026

### Introduction

This update mainly focuses on the Support perk balance for the HoE+ servers (and Precision servers in particular). New server features now allow to customise perks, and I decided to do a Support perk rebalance. So now it's not only less destructive in a precision-only gaming, but is more comfortable to play with and also useful for their teammates.

The most annoying thing about vanilla Support is that their bullets can penetrate through all zeds especially during zed time, aggroing them without demand and ruining game experience that way. Besides that, the Support perk is based around dealing area damage through pellet spread which works well in the vanilla-type games, but doesn't work quite well in the precision-focused game. In my opinion the established gameplay loop on Precision servers demands a different approach, a more realistic one, in which shotgun pellets have less spread and minimal penetration power, just like the way it works in real life. Such approach opens up a whole bunch of possibilities in terms of balancing and other related features that could make the perk stronger and more useful among the other precision perks, and this update is the first iteration of this kind of balance changes.

### Saiga-12 & KS-23

And, of course, the headliner of this update is the [](){ #saiga12-announcement }Saiga-12 semi-automatic shotgun, which replaces the vanilla S12 Shockgun. Its stats remained the same as vanilla except for few common Support perk changes. The shockwave ammo capacity was changed and it's been moved to Tier 5.

<video autoplay loop muted playsinline>
<source src="http://eyesdeep.blue/videos/KF2_S12_Demo_001.mp4" type="video/mp4">
</video>

Apart from that the Support's got another tool worth of your attention which is the [](){ #ks23-announcement }KS-23 riot shotgun. It's been added to both Vanilla and HoE+ servers. More on that in its respective section below.

<video autoplay loop muted playsinline>
<source src="http://eyesdeep.blue/videos/KF2_KS23_Demo_002.mp4" type="video/mp4">
</video>

!!! tip "You can switch looping settings and enable controls of the video through the context menu."

### Detailed Change Log

!!! warning "The addition of modded perks system now requires all perk data to be saved locally in your config files, however these files are empty by default, so when you join servers for the first time after the update, you will need to select and distribute skills for all perks from scratch. So if you join a server and see your skills being locked, don't be scared, just take few seconds to select them again."

??? info "Support perk changes (HoE+)"
    
    * Passive skill ^^"Shotgun Penetration"^^ that increases weapon penetration up to 500% is now replaced by Shotgun Accuracy which decreases spread up to 25%;

    * ^^"Armor Piercing Shot"^^ skill on level 15 (left) which increases penetration is now replaced with armor damage bonus which only works against armored zeds. 10% damage increase remained untouched;

    * ^^"Tight Choke"^^ skill on level 15 (right) now decreases shot spread of perk weapons by 25% instead of 50%. This is because there's passive skill that boosts the same stat now, so together they give +50% bonus on level 25, just like it used to be in the vanilla game. The difference is that you can have the accuracy bonus without using this skill, which allows using different builds;

    * ^^"ZED TIME - Penetrator"^^ skill on level 25 (left) doesn't give any penetration bonuses anymore, so its primary feature is real-time reload speed during ZED time; now this skill is called [](){ #support-sleightofhand }^^"ZED TIME - Sleight of Hand"^^;

    * [](){ #support-barrage }^^"ZED TIME - Barrage"^^ skill on level 25 (right) allows to shoot in real-time during ZED time (compared to shooting in near real-time before changes);

    * Added [](){ #armor-regen-passive }brand new passive skill that regenerates up to 5 armor points instantly each ZED time tick and also slowly regenerates 2 armor points per each ZED time extension. Overall it's possible to regenerate 35+14 armor points for the duration of full ZED time (21 seconds). But the question is, will anybody extend it for you?

    !!! note "Note"

        This might be a good moment to remind that on Precision/HoE+ servers Supports have ability to be a mobile trader. Their trader menu is limited to only purchasing ammo, armor and upgrading weapons; this applies to Supports themselves as well, so they're allowed to use this trader menu in any place on the map. To open regular trader menu, ^^hit^^ interaction button near any trader pod. To open Support's trader menu, ^^hold^^ interaction button near any Support player.

        <figure markdown="span">
          ![Trader Captions](http://eyesdeep.blue/images/docs/trader_captions.png){ width="920" }
        </figure>

??? info "Support weapon changes (HoE+)"

    * Penetration power for all shotguns with `Buckshot` fire mode is limited to 1, i.e. it doesn't penetrate more than 1 zed. The Nailgun is exception here since nail piercing damage type is its main feature;

    - S12 Shockgun was completely swapped for the Saiga-12 shotgun, or its version without shockwave module to be precise; instead of that it has slug rounds option.

        * Primary fire mode remained untouched compared to the vanilla gun;

        * Secondary fire mode switches ammo type to slugs, the devastating ones. They pack a punch and carry a lot of damage andstopping power. They're also projectile-based (no hitscan), so good lack on hitting anything at 50 meters;

        * The price is 2000 Dosh, which used to be its default price on HoE+ and 500 Dosh more than vanilla. No tier 5 upgrade of course. Basically this gun is already somewhat tier 4.5 considering its price;

        * The rate of fire used to be lower on HoE+, but now it's reverted back to vanilla, and also its recoil was adjusted according to the new balance. Slug shot recoil is higher than buckshot mode, just like it's supposed to be;

        * Overall I think this gun turned out pretty great and versatile. It's capable of covering both close and middle range and kinda servers like a workhorse, similarly to Sharpshooter's M14 EBR which can be used with other secondary weapons;

        * Some people might haven't known that the original S12 Shockgun is named Saiga-12 in the game files. I can barely see any similarities between these two, but I guess it's fixed now.

        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_S12_Slug_Demo_001.mp4" type="video/mp4">
        </video>

    * AA-12 and M4 Combat Shotgun are now able to switch ammo type to slugs through cycling alt-fire mode, just like Saiga-12. M4 slugs are semi-automatic, while AA-12 is full-auto, just like its primary fire mode.

        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_Slugs_Demo_001.mp4" type="video/mp4">
        </video>

    * Dragon's Breath now has regular buckshot ammo by default, while incendiary rounds were moved to the alt-fire mode. Also incendiary rounds don't leave ground fire, don't cause zeds to panic (and players too I hope) and slow zeds down by 30%. And yes, now it's called M1897 Trench Gun, just like its real life ancestor.

        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_TrenchGun_Demo_001.mp4" type="video/mp4">
        </video>

    - Added brand new KS-23 Riot Shotgun, the aircraft cannon of shotguns. A perfect riot suppressor in real life. In this case however it has two slightly more lethal fire modes: 

        * Primary fire mode is a slug that can ricochet from surfaces. Its damage drops twice after bouncing off any surface or zed, however it has huge initial damage.

        * Secondary fire mode is a flashbang/concussive round that stuns zeds at under 15 meters. Even though its range is limited, you still can make use of it by stunning larges that get too close or save some trash for the Commando for example.

        * Ammo capacity is 3+1 rounds, spare ammo capacity is 24 rounds, weight is 5 points. The price is 1100 Dosh (tier 3), tier 4 upgrade is available for 700 Dosh. Is it needed though?

        * It may feel like the ammo capacity is incredibly low, but that's why it has concussive rounds in the first place; that's a good way to support other teammates using it as a third tool in your build. That's basically the whole purpose of this gun -- to be an additional tool in whatever build.

??? info "General/Quality of Life changes"

    * The `Switch Role` feature has been fixed; now [`!sr`](commands.md#switch-role) command will work correctly when switching from players to spectators. In before it would either kill a player or wouldn't do anything at all.

    * Added the new [`!zedtimeeffect`](commands.md#zed-time-effect) or [`!zte`](commands.md#zed-time-effect) (`true/false`) command that allows to disable desaturation effect during ZED time. Its value (`true/false`) is saved locally in the configs, so it will remain the same for other game sessions.

    * Added new servers #23 and #24 dedicated to `Simple Holdout` map and other similar ones, which was a community suggestion. Their settings were adjusted specifically for playing this map, and the maximum amount of players was set to 12.

    * Added server #7.1 which is basically the same as other HoE+/Precision servers, except its game length is `7 waves`.

    * The map pool was updated with the maps players have been requesting; if you have any suggestions, DM me or write to the [Ideas & suggestions](https://steamcommunity.com/groups/SPB-GS/discussions/1/3824159517132418347/) section.

    * You asked, I listened; so now servers have unlimited flashlight.

### Future Plans

If you take a closer look at recent changes, you might notice that all starting weapons now have choice options just like 9mm Pistol. That's because I'm planning on adding different options for starting weapons to choose from according to your preferences. That would bring some diversity to the starting waves which is basically the most boring part of the game right now.

I also planned to extend Commando and Sharpshooter arsenal to break the current meta a little bit. Some day I'll get my hands on the FAMAS overhaul, no promises though. What I can promise though is to bring back the M16 with the flashbang grenade launcher, but that's gonna be in the next Commando update.

I'm not planning on changing gameplay drastically of course, there's no need in that. The game is pretty aged at this point, and let's be honest, most players are here just because of the gameplay they're used to over the years. However, I do have some ideas on refreshing the old formula, and I'd still want to implement them some day. I even have some plans on Field Medic. Heavier boss waves were planned too as a replacement for boring vanilla boss waves. Can hardly tell when I could get my hands on that at the moment.