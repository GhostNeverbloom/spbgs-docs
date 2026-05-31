# Updates & Patch Notes

This is where you can find the changelogs for the latest updates starting from May 2026.

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

And, of course, the headliner of this update is the Saiga-12 semi-automatic shotgun, which replaces the vanilla S12 Shockgun. Its stats remained the same as vanilla except for few common Support perk changes. The shockwave ammo capacity was changed and it's been moved to Tier 5.

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