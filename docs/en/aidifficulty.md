# AI Difficulty System

## What is this?

This is the brand new system that allows to tweak settings related to zeds through server configs "on fly", and that way create various difficulty presets.

Its main difference from other solutions is that it doesn't natively modify zed pawns, but rather allows to quickly configure their parameters through a server-side `INI-file`.

Currently the system is limited to custom zed parameters, but in future it will be expanded with few other mechanics, such as different effects based on damage type, zonal hit system for players and stuff like that.

Apart from that, it includes custom behaviour and stages of the bosses, generally making them harder.

All changes are organised into difficulty presets that can be switched back and forth during a match:

* [`!dcad`](commands.md#disable-custom-ai-difficulty) set to `false` enables the sytem, allowing to use custom zed presets;

* [`!ad`](commands.md#ai-difficulty) `<index>` switches between difficulty presets.

[](){ #available-presets }
## Available Presets

There are few presets of zeds defined by their index:

* `0` - Vanilla Zeds;

* `1` - Pivo Zeds;

* `2` - Harder Zeds by Kore;

* `3` - Nightcore Zeds by fanta.

!!! note "Please note that all listed options are only available on Precision/HoE+ servers, while Vanilla has only `1` and `2`."

[](){ #ai-difficulty-presets }
## Zed Preset Description

=== "Cyst"

    <div class="grid" markdown>

    !!! vanilla-zeds "Vanilla Zeds"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 190
          Sprint Speed    = 400
          ```

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 210 +
          Sprint Speed    = 420 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    !!! harder-zeds "Harder Zeds"
          ``` ini
          Body Health     = 165 +
          Head Health     = 25 +
          Walk Speed      = 190
          Sprint Speed    = 400
          ```
    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health     = 165 +
          Head Health     = 25 +
          Walk Speed      = 210 +
          Sprint Speed    = 420 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    </div>

=== "Clot"

    <div class="grid" markdown>

    !!! vanilla-zeds "Vanilla Zeds"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 210
          Sprint Speed    = 500
          ```

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 230 +
          Sprint Speed    = 520 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    !!! harder-zeds "Harder Zeds"
          ``` ini
          Body Health     = 100 +
          Head Health     = 25 +
          Walk Speed      = 210
          Sprint Speed    = 500
          ```

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health     = 100 +
          Head Health     = 25 +
          Walk Speed      = 230 +
          Sprint Speed    = 520 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    </div>

    !!! info "Rioters are disabled in all custom presets and only remain in Vanilla zeds."

=== "Slasher"

    <div class="grid" markdown>

    !!! vanilla-zeds "Vanilla Zeds"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 300
          Sprint Speed    = 500
          ```

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health     = 100
          Head Health     = 20
          Walk Speed      = 320 +
          Sprint Speed    = 520 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    !!! harder-zeds "Harder Zeds"
          ``` ini
          Body Health     = 165 +
          Head Health     = 25 +
          Walk Speed      = 300
          Sprint Speed    = 500
          ```

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health     = 165 +
          Head Health     = 25 +
          Walk Speed      = 320 +
          Sprint Speed    = 520 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    </div>

=== "Crawler"

    <div class="grid" markdown>

    !!! vanilla-zeds "Vanilla Zeds"
          ``` ini
          Body Health     = 55
          Head Health     = 20
          Walk Speed      = 400
          Sprint Speed    = 500
          ```

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health     = 55
          Head Health     = 20
          Walk Speed      = 420 +
          Sprint Speed    = 520 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    !!! harder-zeds "Harder Zeds"
          ``` ini
          Body Health     = 100 +
          Head Health     = 25 +
          Walk Speed      = 400
          Sprint Speed    = 500
          ```

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health     = 100 +
          Head Health     = 25 +
          Walk Speed      = 420 +
          Sprint Speed    = 520 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    </div>

    !!! info "Elite Crawlers are natively disabled on HoE+/Precision servers."

=== "Stalker"

    <div class="grid" markdown>

    !!! vanilla-zeds "Vanilla Zeds"
          ``` ini
          Body Health     = 75
          Head Health     = 20
          Walk Speed      = 210
          Sprint Speed    = 420
          ```

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health     = 75
          Head Health     = 20
          Walk Speed      = 420 +
          Sprint Speed    = 520 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    !!! harder-zeds "Harder Zeds"
          ``` ini
          Body Health     = 75
          Head Health     = 20
          Walk Speed      = 210
          Sprint Speed    = 420
          ```

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health     = 75
          Head Health     = 20
          Walk Speed      = 420 +
          Sprint Speed    = 520 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    </div>

=== "Gorefast"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Body Health           = 200
          Head Health           = 50
          Walk Speed            = 240
          Sprint Speed          = 450
          Base Damage           = 10
          Hit Range             = 192
          Sprint Trigger Range  = 8m   (1)
          Bleedout Time         = 5s   (2)
          Gorefiend Chance      = 45%  (3)
          ```
    1.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    2.  Time until zed's body drops dead after decapitating.

    3.  Chance for Gorefast to spawn as Gorefiend, which is technically the 'elite' version of Gorefast.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health           = 200
          Head Health           = 50
          Walk Speed            = 250 +
          Sprint Speed          = 540 +
          Base Damage           = 10
          Hit Range             = 200 +
          Sprint Trigger Range  = 12m + (2)
          Bleedout Time         = 3s -  (3)
          Gorefiend Chance      = 45%   (4)
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    3.  Time until zed's body drops dead after decapitating.

    4.  Chance for Gorefast to spawn as Gorefiend, which is technically the 'elite' version of Gorefast.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Body Health           = 400 +
          Head Health           = 50
          Walk Speed            = 253 +
          Sprint Speed          = 600 +
          Base Damage           = 12.5 +
          Hit Range             = 200 +
          Sprint Trigger Range  = 14m + (1)
          Bleedout Time         = 2s -  (2)
          Gorefiend Chance      = N/A   (3)
          ```

    1.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    2.  Time until zed's body drops dead after decapitating.

    3.  Chance for Gorefast to spawn as Gorefiend, which is technically the 'elite' version of Gorefast.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health           = 400 +
          Head Health           = 50
          Walk Speed            = 273 +
          Sprint Speed          = 620 +
          Base Damage           = 12.5 +
          Hit Range             = 200 +
          Sprint Trigger Range  = 14m + (2)
          Bleedout Time         = 3s -  (3)
          Gorefiend Chance      = N/A   (4)
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    3.  Time until zed's body drops dead after decapitating.

    4.  Elite Pawn chance is forced to be disabled, so this setting is not used.

    </div>

=== "Gorefiend"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Body Health           = 400
          Head Health           = 150
          Walk Speed            = 240
          Sprint Speed          = 535
          Base Damage           = 10
          Hit Range             = 210
          Sprint Trigger Range  = 8m  (1)
          Bleedout Time         = 5s  (2)
          ```

    1.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    2.  Time until zed's body drops dead after decapitating.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health           = 400
          Head Health           = 150
          Walk Speed            = 260 +
          Sprint Speed          = 600 +
          Base Damage           = 12 +
          Hit Range             = 220 +
          Sprint Trigger Range  = 14m + (2)
          Bleedout Time         = 3s -  (3)
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Threshold (in meters) between zed and player after which it can start sprinting towards the player.

    3.  Time until zed's body drops dead after decapitating.

    </div>

    !!! info "Gorefiends are natively disabled in Harder and Nightcore presets."

=== "Bloat"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Base Damage           = 14
          Vomit Damage          = 12
          Vomit Range           = 350
          Bleedout Time         = 5s    (1)
          DMG Taken by Fire     = 1x    (2)
          ```
    1.  Time until zed's body drops dead after decapitating.

    2.  Vulnerability multiplier against Fire damage type.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Base Damage           = 16 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Time until zed's body drops dead after decapitating.

    3.  Vulnerability multiplier against Fire damage type.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Base Damage           = 20 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -  (1)
          DMG Taken by Fire     = 1x    (2)
          ```
    1.  Time until zed's body drops dead after decapitating.

    2.  Vulnerability multiplier against Fire damage type.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Base Damage           = 24 +
          Vomit Damage          = 20 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Time until zed's body drops dead after decapitating.

    3.  Vulnerability multiplier against Fire damage type.

    </div>

=== "Husk"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Body Health                      = 462
          Head Health                      = 200
          Headshot Damage Multiplier       = 1.001x
          Walk Speed                       = 170
          Sprint Chance                    = 75%
          Base Damage                      = 15
          Hit Range                        = 180
          Bleedout Time                    = 5s      (1)
          Fireball Explosion Momentum      = 65000
          Fireball Knockdown Strength      = 100
          Max Distance for Fireball        = 4000
          Fireball Fire Interval           = 3.5s    (2)
          FB Randomized Value              = 1       (3)
          FB Splash Damage Chance          = 75%
          Fireball Speed                   = 3600
          Fireball Aim Error               = 0.03f
          FB Lead Target Aim Error         = 0.03f
          Fireball Can Lead Target         = False
          Flamethrower Max Distance        = 500
          Fireball Animation Rate          = 1x      (4)
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Cooldown between fireball attacks.

    3.  Random value from `-value` to `+value` that's added to `Fireball Fire Interval`;

        If set to `1`, a random value from `-1` to `1` will be added to the cooldown between fireball attacks.

    4.  Rate of the Husk's fireball attack animation.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health                      = 540 +
          Head Health                      = 220 +
          Headshot Damage Multiplier       = 1.1x +
          Walk Speed                       = 200 +
          Sprint Chance                    = 0% -
          Base Damage                      = 16
          Hit Range                        = 190 +
          Bleedout Time                    = 3s +    (2)
          Fireball Explosion Momentum      = 30000 -
          Fireball Knockdown Strength      = 0 -
          Max Distance for Fireball        = 8000 +
          Fireball Fire Interval           = 2.0s -  (3)
          FB Randomized Value              = 0 -     (4)
          FB Splash Damage Chance          = 100% +
          Fireball Speed                   = 3800 +
          Fireball Aim Error               = 0.001f -
          FB Lead Target Aim Error         = 0.01f -
          Fireball Can Lead Target         = True +
          Flamethrower Max Distance        = 500
          Fireball Animation Rate          = 1x      (5)
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Time until zed's body drops dead after decapitating.

    3.  Cooldown between fireball attacks.

    4.  Random value from `-value` to `+value` that's added to `Fireball Fire Interval`;

        If set to `1`, a random value from `-1` to `1` will be added to the cooldown between fireball attacks.

    5.  Rate of the Husk's fireball attack animation.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Body Health                      = 600 +
          Head Health                      = 220 +
          Headshot Damage Multiplier       = 1.1x +
          Walk Speed                       = 200 +
          Sprint Chance                    = 0% -
          Base Damage                      = 16 +
          Hit Range                        = 190 +
          Bleedout Time                    = 3s +    (1)
          Fireball Explosion Momentum      = 30000 -
          Fireball Knockdown Strength      = 0 -
          Max Distance for Fireball        = 8000 +
          Fireball Fire Interval           = 0.25s - (2)
          FB Randomized Value              = 0 -     (3)
          FB Splash Damage Chance          = 100% +
          Fireball Speed                   = 4000 +
          Fireball Aim Error               = 0.0f -
          FB Lead Target Aim Error         = 0.0f -
          Fireball Can Lead Target         = True +
          Flamethrower Max Distance        = 300 -
          Fireball Animation Rate          = 1x      (4)
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Cooldown between fireball attacks.

    3.  Random value from `-value` to `+value` that's added to `Fireball Fire Interval`;

        If set to `1`, a random value from `-1` to `1` will be added to the cooldown between fireball attacks.

    4.  Rate of the Husk's fireball attack animation.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health                      = 600 +
          Head Health                      = 220 +
          Headshot Damage Multiplier       = 1.1x +
          Walk Speed                       = 200 +
          Sprint Chance                    = 0% -
          Base Damage                      = 16 +
          Hit Range                        = 190 +
          Bleedout Time                    = 3s +    (2)
          Fireball Explosion Momentum      = 30000 -
          Fireball Knockdown Strength      = 0 -
          Max Distance for Fireball        = 8000 +
          Fireball Fire Interval           = 0.25s - (3)
          FB Randomized Value              = 0 -     (4)
          FB Splash Damage Chance          = 100% +
          Fireball Speed                   = 4000 +
          Fireball Aim Error               = 0.0f -
          FB Lead Target Aim Error         = 0.0f -
          Fireball Can Lead Target         = True +
          Flamethrower Max Distance        = 300 -
          Fireball Animation Rate          = 1.15x + (5)
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Time until zed's body drops dead after decapitating.

    3.  Cooldown between fireball attacks.

    4.  Random value from `-value` to `+value` that's added to `Fireball Fire Interval`;

        If set to `1`, a random value from `-1` to `1` will be added to the cooldown between fireball attacks.

    5.  Rate of the Husk's fireball attack animation.

    </div>

    !!! info "Note"
        There is another parameter in Harder and Nightcore zeds called __`Low Intensity Attack Scale of Fireball Interval`__, however it is not used because [Game Conductor](https://wiki.killingfloor2.com/index.php?title=Mechanics_(Killing_Floor_2)#Gameplay_-_Game_Conductor) is disabled on both HoE+ and CD, therefore this parameter is obsolete.

        Same with the Elite Pawns (EDARs) which are natively disabled on HoE+/Precision servers.

=== "Siren"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Body Health                  = 230
          Head Health                  = 155
          Walk Speed                   = 200
          Headshot DMG Multiplier      = 1.1x
          Scream Cooldown              = 4s
          Bleedout Time                = 5s    (1)
          Damaged Sprint Chance        = 85%   (2)
          Damage Modifier              = 1x
          Scream Base Damage           = 15
          Scream Radius                = 600
          Camera Shake Inner Radius    = 450
          Camera Shake Outer Radius    = 700
          ```
    1.  Time until zed's body drops dead after decapitating.

    2.  Chance for the zed to start sprinting after getting hit.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Body Health                  = 230
          Head Health                  = 155
          Walk Speed                   = 220 +
          Headshot DMG Multiplier      = 1.1x
          Scream Cooldown              = 3s -
          Bleedout Time                = 3s -   (2)
          Damaged Sprint Chance        = 10% -  (3)
          Damage Modifier              = 1.5x +
          Scream Base Damage           = 11 -
          Scream Radius                = 900 +
          Camera Shake Inner Radius    = 600 +
          Camera Shake Outer Radius    = 1000 +
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Time until zed's body drops dead after decapitating.

    3.  Chance for the zed to start sprinting after getting hit.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Body Health                  = 300 +
          Head Health                  = 155
          Walk Speed                   = 220 +
          Headshot DMG Multiplier      = 1.1x
          Scream Cooldown              = 2.5s -
          Bleedout Time                = 3s -    (1)
          Damaged Sprint Chance        = 10% -   (2)
          Damage Modifier              = 1.75x +
          Scream Base Damage           = 11 -
          Scream Radius                = 1200 +
          Camera Shake Inner Radius    = 600 +
          Camera Shake Outer Radius    = 1000 +
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Chance for the zed to start sprinting after getting hit.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Body Health                  = 300 +
          Head Health                  = 300 +
          Walk Speed                   = 240 +
          Headshot DMG Multiplier      = 1x -
          Scream Cooldown              = 2.5s -
          Bleedout Time                = 3s -    (2)
          Damaged Sprint Chance        = 10% -   (3)
          Damage Modifier              = 1.75x +
          Scream Base Damage           = 11 -
          Scream Radius                = 1500 +
          Camera Shake Inner Radius    = 600 +
          Camera Shake Outer Radius    = 1000 +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Time until zed's body drops dead after decapitating.

    3.  Chance for the zed to start sprinting after getting hit.

    </div>

    !!! info "The __`Solo Damage Modifier`__ parameter was not changed as a cost of pub-friendly experience; the feature is mostly relevant in a solo match which is often the case for [CD CP](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175)'s SoloMode feature, but isn't for HoE+ servers."

=== "Scrake"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Walk Speed        = 170
          Sprint Speed      = 600
          Base Damage       = 30
          Hit Range         = 200
          Bleedout Time     = 5s     (1)
          Chainsaw Slow     = {--0%--}     (2)
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Getting hit by Scrake's chainsaw reduces player's movement speed by specified value for `2s`.

        !!! warning "This feature is unfinished and so is currently not active."

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Walk Speed        = 220 +
          Sprint Speed      = 650 +
          Base Damage       = 30
          Hit Range         = 200
          Bleedout Time     = 2s +   (2)
          Chainsaw Slow     = {--0%--}     (3)
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Time until zed's body drops dead after decapitating.

    3.  Getting hit by Scrake's chainsaw reduces player's movement speed by specified value for `2s`.

        !!! warning "This feature is unfinished and so is currently not active."

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Walk Speed        = 250 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 200
          Bleedout Time     = 2s     (1)
          Chainsaw Slow     = {--0%--}     (2)
          ```
    1.  Time until zed's body drops dead after decapitating.

    2.  Getting hit by Scrake's chainsaw reduces player's movement speed by specified value for `2s`.

        !!! warning "This feature is unfinished and so is currently not active."

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Walk Speed        = 260 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 225
          Bleedout Time     = 2.5s + (2)
          Chainsaw Slow     = {--20% +--}  (3)
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Time until zed's body drops dead after decapitating.

    3.  Getting hit by Scrake's chainsaw reduces player's movement speed by specified value for `2s`.

        !!! warning "This feature is unfinished and so is currently not active."

    </div>

=== "Fleshpound"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Base Damage                  = 55
          Hit Range                    = 250
          Walk Speed                   = 260
          Sprint Speed                 = 725
          Bleedout Time                = 5s     (1)
          Frustration Rage Time        = 10-14s (2)
          Footstep Cam Shake Pitch     = 120
          Footstep Cam Shake Roll      = 60
          Footstep Cam Outer Radius    = 900
          Rage Animation Rate          = 1x
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Once Fleshpound makes visual contact with a player, it automatically enrages after Frustration Rage timer runs out.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Base Damage                  = 60 +
          Hit Range                    = 275 +
          Walk Speed                   = 300 +
          Sprint Speed                 = 820 +
          Bleedout Time                = 2.5s + (2)
          Frustration Rage Time        = 14s +  (3)
          Footstep Cam Shake Pitch     = 120
          Footstep Cam Shake Roll      = 60
          Footstep Cam Outer Radius    = 900
          Rage Animation Rate          = 1x
          ```
    1.  * Removed 10% movement speed randomization from Vanilla;

        * Albino skins applied to Stalker, Bloat, Husk, Siren, Scrake and Fleshpound.

    2.  Time until zed's body drops dead after decapitating.

    3.  Once Fleshpound makes visual contact with a player, it automatically enrages after Frustration Rage timer runs out.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Base Damage                  = 64 +
          Hit Range                    = 275 +
          Walk Speed                   = 320 +
          Sprint Speed                 = 850 +
          Bleedout Time                = 2s -   (1)
          Frustration Rage Time        = 10-14s (2)
          Footstep Cam Shake Pitch     = 160 +
          Footstep Cam Shake Roll      = 80 +
          Footstep Cam Outer Radius    = 1200 +
          Rage Animation Rate          = 1x
          ```

    1.  Time until zed's body drops dead after decapitating.

    2.  Once Fleshpound makes visual contact with a player, it automatically enrages after Frustration Rage timer runs out.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Base Damage                  = 64 +
          Hit Range                    = 275 +
          Walk Speed                   = 320 +
          Sprint Speed                 = 850 +
          Bleedout Time                = 2.5s - (2)
          Frustration Rage Time        = 10s -  (3)
          Footstep Cam Shake Pitch     = 160 +
          Footstep Cam Shake Roll      = 80 +
          Footstep Cam Outer Radius    = 1200 +
          Rage Animation Rate          = 1.15x +
          ```

    1.  * Zeds don't fight with each other;

        * Zeds don't triumph on player kill (currently bugged and so is disabled);

        * Removed 10% movement speed randomization from Vanilla.

    2.  Time until zed's body drops dead after decapitating.

    3.  Once Fleshpound makes visual contact with a player, it automatically enrages after Frustration Rage timer runs out.

    </div>

    !!! info "Quarter Pounds are natively disabled on HoE+/Precision servers."
