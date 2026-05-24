# Updates & Patch Notes

This is where you can find the change logs for the latest updates starting from May 2026.

## May 24, 2026

This update mainly focuses on the Support perk balance for the HoE+ servers (and Precision servers in particular). New server features now allow to customise perks, and I decided to do a Support perk rebalance. So now it's not only less destructive in a precision-only gaming, but is more comfortable to play with and also useful for their teammates.

The most annoying thing about vanilla Support is that their bullets can penetrate through all zeds especially during zed time, aggroing them without demand and ruining game experience that way. Besides that, the Support perk is based around dealing area damage through pellet spread which works well in the vanilla-type games, but doesn't work quite well in the precision-focused game. In my opinion the established gameplay loop on Precision servers demands a different approach, a more realistic one, in which shotgun pellets have less spread and minimal penetration power, just like the way it works in real life. Such approach opens up a whole bunch of possibilities in terms of balancing and other related features that could make the perk stronger and more useful among the other precision perks, and this update is the first iteration of this kind of balance changes.

A more detailed change log is listed below.

!!! warning "The addition of modded perks system now requires all perk data to be saved locally in your config files, however these files are empty by default, so when you join servers for the first time after the update, you will need to select and distribute skills for all perks from scratch. So if you join a server and see your skills being locked, don't be scared, just take few seconds to select them again."

??? info "Support perk changes (HoE+)"
    
    * Passive skill ^^"Shotgun Penetration"^^ that increases weapon penetration up to 500% is now replaced by Shotgun Accuracy which decreases spread up to 25%;

    * ^^"Armor Piercing Shot"^^ skill on level 15 (left) which increases penetration is now replaced with armor damage bonus which only works against armored zeds. 10% damage increase remained untouched;

    * ^^"Tight Choke"^^ skill on level 15 (right) now decreases shot spread of perk weapons by 25% instead of 50%. This is because there's passive skill that boosts the same stat now, so together they give +50% bonus on level 25, just like it used to be in the vanilla game. The difference is that you can have the accuracy bonus without using this skill, which allows using different builds;

    * ^^"ZED TIME - Penetrator"^^ skill on level 25 (left) doesn't give any penetration bonuses anymore, so its primary feature is real-time reload speed during ZED time; now this skill is called ^^"ZED TIME - Sleight of Hand"^^;

    * ^^"ZED TIME - Barrage"^^ skill on level 25 (right) allows to shoot in real-time during ZED time (compared to shooting in near real-time before changes);

    * Added brand new passive skill that regenerates 5 armor points once ZED time is triggered and then regenerates 2 armor points per each real second for the duration of ZED time.

    !!! note "Note"

        This might be a good moment to remind that on Precision/HoE+ servers Supports have ability to be a mobile trader. Their trader menu is limited to only purchasing ammo, armor and upgrading weapons; this applies to Supports themselves as well, so they're allowed to use this trader menu in any place on the map. To open regular trader menu, ^^hit^^ interaction button near any trader pod. To open Support's trader menu, ^^hold^^ interaction button near any Support player.

        <figure markdown="span">
          ![Trader Captions](http://eyesdeep.blue/images/docs/trader_captions.png){ width="920" }
        </figure>

??? info "Support's weapon changes (HoE+)"

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

        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_KS23_Demo_001.mp4" type="video/mp4">
        </video>

??? info "General/Quality of Life changes"

    * 

    * Исправлена механика перехода между спектаторами и игроками посредством команды [`!sr`](commands.md#switch-role); теперь переход из игроков в спектаторы работает корректно (раньше он либо не работал совсем, либо просто убивал игрока).

    * Добавлена команда, позволяющая отключать эффект выцвевшей картинки во время зед-тайма -- [`!zedtimeeffect`](commands.md#zed-time-effect) or [`!zte`](commands.md#zed-time-effect) (`true/false`). Её значение сохраняется в локальный файл конфигурации, соответственно и запоминается для всех последующих игр на серверах.

    * Добавлены серверы #23 и #24, посвящённые карте `Simple Holdout` и ей подобным, т.к. на них был спрос от комьюнити. Их настройки специально заточены под игру на этой карте, а также максимальное количество игроков увеличено до 12.

    * Добавлен сервер #7.1, который представляет из себя аналог HoE+ наподобие серверов #07 и #08, но только с длиной игры 7 волн.

    * Обновлён пул карт в соответствии с запросами игроков; если у вас есть предложения по картам, пишите мне лично или в раздел [Идеи и предложения](https://steamcommunity.com/groups/SPB-GS/discussions/0/3824159517132427343/).

    * По просьбам трудящихся, заряд фонарика на серверах теперь бесконечный. Теперь где-то в мире рад один Серёга.