# System AI Difficulty

## Czym jest System AI Difficulty?

Jest to system, który pozwala na zmianę różnych parametrów zetów, co pozwala na skonfigurowanie różnych zestawów i zmianę ich w grze w czasie rzeczywistym. Tworzy to możliwość zmiany poziomu trudności samych przeciwników.

System pozwala na zmianę nie rodzaju zeta, a na regulowanie jego parametrów i zachowania poprzez `plik INI`.

Obecnie możliwym jest tylko zmiana parametrów przeciwników, natomiast w przyszłości planowany jest dalszy rozwój danego systemu, który pozwoli na bardziej urozmaiconą grę. 

System pozwala także na zmianę zachowania bossów, dlatego ich fazy mogą się różnić w zależności od zestawu.

Określone zmiany w parametrach pozwoliły na stworzenie kilku zestawów zetów, które można zmieniać w czasie gry:

* [`!dcad`](commands.md#disable-custom-ai-difficulty) z argumentem `false` włącza możliwość zmiany zestawu, domyślnie włączona na HoE+;

* [`!ad`](commands.md#ai-difficulty) `<index>` pozwala na zmianę dostępnych zestawów.

[](){ #available-presets }
## Dostępne zestawy

Istnieje kilka gotowych zestawów zetów, do których przypisany został odpowiedni indeks:

* `0` - Vanilla Zeds;

* `1` - Pivo Zeds;

* `2` - Harder Zeds autorstwa Kore;

* `3` - Nightcore Zeds autorstwa fanta.

!!! note "Wszystkie powyższe zestawy dostępne są tylko na HoE+, na serwerach typu Vanilla dostępne są tylko Vanilla i Pivo ."

[](){ #ai-difficulty-presets }
## Parametry zetów

=== "Cysta"

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.
        

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    </div>

=== "Skrzep"

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    </div>

    !!! info "Buntownik został całkowicie usunięty ze wszystkich zestawów oprócz Vanilla."

=== "Siepacz"

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    </div>

=== "Pełzacz"

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    </div>

    !!! info "Elitarny pełzacz został całkowicie wyłączony na wszystkich serwerach HoE+."

=== "Zmora"

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    </div>

=== "Rozpruwacz"

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
    1.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Szansa na to, że Rozpruwacz zespawnuje się z dwoma mieczami, czyli jako Dręczyciel — który technicznie rzecz biorąc jest jego „elitarną wersją".

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    3.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    4.  Szansa na to, że Rozpruwacz zespawnuje się z dwoma mieczami, czyli jako Dręczyciel — który technicznie rzecz biorąc jest jego „elitarną wersją".

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

    1.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Szansa na to, że Rozpruwacz zespawnuje się z dwoma mieczami, czyli jako Dręczyciel — który technicznie rzecz biorąc jest jego „elitarną wersją".

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    3.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    4.  Шанс спавна в качестве элитной версии принудительно отключен, поэтому настройка не задействована.

    </div>

=== "Dręczyciel"

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

    1.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Odległość (w metrach) pomiędzy graczem a zetem, po przekroczeniu której zet zaczyna biec w stronę gracza.

    3.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    </div>

    !!! info "Dręczyciel został całkowicie wyłączony w zestawie Harder i Nightcore."

=== "Spaślak"

    <div class="grid" markdown>

    !!! vanilla-zeds annotate "Vanilla Zeds"
          ``` ini
          Base Damage           = 14
          Vomit Damage          = 12
          Vomit Range           = 350
          Bleedout Time         = 5s    (1)
          DMG Taken by Fire     = 1x    (2)
          ```
    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Mnożnik podatności na obrażenia od 'ognia'.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Base Damage           = 16 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Mnożnik podatności na obrażenia od 'ognia'.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Base Damage           = 20 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -  (1)
          DMG Taken by Fire     = 1x    (2)
          ```
    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Mnożnik podatności na obrażenia od 'ognia'.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Base Damage           = 24 +
          Vomit Damage          = 20 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Mnożnik podatności na obrażenia od 'ognia'.

    </div>

=== "Truchło"

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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Czas pomiędzy wystrzałem ognistej kuli.

    3.  Losowa wartość w zakresie od `-X` do `+X`, dodawane do parametru `Fireball Fire Interval`;

        Jeśli wartość wynosi `1`, to do opóźnienia wystrzału ognistą kulą dodana zostaje losowa wartość z zakresu od `-1` do `1`.

    4.  Szybkość animacji wystrzału.

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Czas pomiędzy wystrzałem ognistej kuli.

    4.  Losowa wartość w zakresie od `-X` do `+X`, dodawane do parametru `Fireball Fire Interval`;

        Jeśli wartość wynosi `1`, to do opóźnienia wystrzału ognistą kulą dodana zostaje losowa wartość z zakresu od `-1` do `1`.

    5.  Szybkość animacji wystrzału.

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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Czas pomiędzy wystrzałem ognistej kuli.

    3.  Losowa wartość w zakresie od `-X` do `+X`, dodawane do parametru `Fireball Fire Interval`;

        Jeśli wartość wynosi `1`, to do opóźnienia wystrzału ognistą kulą dodana zostaje losowa wartość z zakresu od `-1` do `1`.

    4.  Szybkość animacji wystrzału.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Czas pomiędzy wystrzałem ognistej kuli.

    4.  Losowa wartość w zakresie od `-X` do `+X`, dodawane do parametru `Fireball Fire Interval`;

        Jeśli wartość wynosi `1`, to do opóźnienia wystrzału ognistą kulą dodana zostaje losowa wartość z zakresu od `-1` do `1`.

    5.  Szybkość animacji wystrzału.

    </div>

    !!! info "Note"
        W zestawach Harder oraz Nightcore istnieje jeszcze jeden parametr - __`Low Intensity Attack Scale of Fireball Interval`__, kedmal został on wyłączony z racji usunięcia mechaniki [Game Conductor'а](https://wiki.killingfloor2.com/index.php?title=Mechanics_(Killing_Floor_2)#Gameplay_-_Game_Conductor) na CD i serwerach HoE+.

        Elitarne wersje Truchła, czyli wszystkie rodzaje E.D.A.R robotów, na serwerach HoE+ zostały wyłączone.

=== "Syrena"

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
    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Szansa na to, że zet zacznie biec w stronę gracza po otrzymaniu obrażeń.

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Szansa na to, że zet zacznie biec w stronę gracza po otrzymaniu obrażeń.

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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Szansa na to, że zet zacznie biec w stronę gracza po otrzymaniu obrażeń.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.   Szansa na to, że zet zacznie biec w stronę gracza po otrzymaniu obrażeń.

    </div>

    !!! info "Parametr __`Solo Damage Modifier`__ w ramach kompromisu pozostał bez zmian na serwerach; temat ten bardziej dotyczy trybu SoloMode z [CD CP](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175), niż HoE+."

=== "Rzeźnik"

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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Otrzymanie obrażeń od Rzeźnika skutkuje spowolnieniem gracza na `2sek`.

        !!! warning "Opcja czasowo niedostępna."

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Walk Speed        = 220 +
          Sprint Speed      = 650 +
          Base Damage       = 30
          Hit Range         = 200
          Bleedout Time     = 2s +   (2)
          Chainsaw Slow     = {--0%--}     (3)
          ```
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Otrzymanie obrażeń od Rzeźnika skutkuje spowolnieniem gracza na `2sek`.

        !!! warning "Opcja czasowo niedostępna."

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Walk Speed        = 250 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 200
          Bleedout Time     = 2s     (1)
          Chainsaw Slow     = {--0%--}     (2)
          ```
    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Otrzymanie obrażeń od Rzeźnika skutkuje spowolnieniem gracza na `2sek`.

        !!! warning "Opcja czasowo niedostępna."

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Walk Speed        = 260 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 225
          Bleedout Time     = 2.5s + (2)
          Chainsaw Slow     = {--20% +--}  (3)
          ```

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Otrzymanie obrażeń od Rzeźnika skutkuje spowolnieniem gracza na `2sek`.

        !!! warning "Opcja czasowo niedostępna."

    </div>

=== "Mięśniak"

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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Wizualny kontakt Mięśniaka z graczem powoduje furię, która rozpoczyna się po upłynięciu danego czasu.

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
    1.  * Wyłączona 10%-owa szansa na zmianę szybkości;

        * Zmiana wyglądu przeciwników: wygląd albinosa dla Zmory, Spaślaka, Truchła. Syreny, Rzeźnika i Mięśniaka.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Wizualny kontakt Mięśniaka z graczem powoduje furię, która rozpoczyna się po upłynięciu danego czasu.    
    
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

    1.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    2.  Wizualny kontakt Mięśniaka z graczem powoduje furię, która rozpoczyna się po upłynięciu danego czasu.

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

    1.  * Zety nie mogą atakować się nawzajem;

        * Brak animacji triumfu nad zabitym graczem;

        * Wyłączona 10%-owa szansa na zmianę szybkości.

    2.  Czas, po upłynięciu którego ciało przeciwnika pada na ziemię po dekapitacji.

    3.  Wizualny kontakt Mięśniaka z graczem powoduje furię, która rozpoczyna się po upłynięciu danego czasu.

    </div>

    !!! info "Ćwierćmięśniaki są niedostępne na wszystkich serwerach HoE+."
