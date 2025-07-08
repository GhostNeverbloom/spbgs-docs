# Система AI Difficulty

## Что это?

Это новая система, которая позволяет настраивать различные параметры зедов через серверные конфигурации на лету, и таким образом создавать различные пресеты сложности.

Основное различие с другими существующими решениями — это то, что система не изменяет классы зедов, а позволяет быстро настраивать их параметры и поведение через серверный `INI-файл`.

На текущий момент система ограничевается лишь изменением параметров зедов, но в будущем она будет расширена другими механиками, такими как различные дебаффы основанные на типе получаемого урона, зональная система повреждений для игроков и т.д.

Кроме того, данная механика включает в себя кастомное поведение и стадии боссов, тем самым делая их более опасными.

Все правки распределены на пресеты сложности, которые можно переключать между собой во время матча:

* [`!dcad`](commands.md#disable-custom-ai-difficulty) установленная на `false` включает систему, позволяя использовать пресеты;

* [`!ad`](commands.md#ai-difficulty) `<index>` переключает пресеты сложности.

[](){ #available-presets }
## Доступные пресеты

Есть несколько пресетов для зедов, каждому из которых присвоен свой индекс:

* `0` - Vanilla Zeds;

* `1` - Pivo Zeds;

* `2` - Harder Zeds от Kore;

* `3` - Nightcore Zeds от fanta.

!!! note "Нужно учесть, что все перечисленные опции доступны только на Precision/HoE+ серверах, в то время как на ванильных серверах есть только `1` and `2`."

[](){ #ai-difficulty-presets }
## Описание пресетов зедов

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    </div>

    !!! info "Мятежники полностью отключены во всех пресетах кроме ванильного."

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    </div>

=== "Cralwer"

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    </div>

    !!! info "Элитные пауки полностью отключены на всех Precision/HoE+ серверах."

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

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
    1.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Шанс того что Берсеркер заспавнится как Берсерк с 2 мечами, который технически является его 'элитной' версией.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    3.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    4.  Шанс того что Берсеркер заспавнится как Берсерк с 2 мечами, который технически является его 'элитной' версией.

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

    1.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Шанс того что Берсеркер заспавнится как Берсерк с 2 мечами, который технически является его 'элитной' версией.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    3.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    4.  Шанс спавна в качестве элитной версии принудительно отключен, поэтому настройка не задействована.

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

    1.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Расстояние (в метрах) между зедом и игроком, по преодолении которого зед может начать бежать на игрока.

    3.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    </div>

    !!! info "Берсерки с 2 мечами полностью отключены в пресетах Harder и Nightcore."

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
    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Множитель уязвимости против типа урона 'Огонь'.

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Base Damage           = 16 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Множитель уязвимости против типа урона 'Огонь'.

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Base Damage           = 20 +
          Vomit Damage          = 16 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -  (1)
          DMG Taken by Fire     = 1x    (2)
          ```
    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Множитель уязвимости против типа урона 'Огонь'.

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Base Damage           = 24 +
          Vomit Damage          = 20 +
          Vomit Range           = 400 +
          Bleedout Time         = 3s -   (2)
          DMG Taken by Fire     = 0.4x - (3)
          ```

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Множитель уязвимости против типа урона 'Огонь'.

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Задержка между выстрелами фаерболлом.

    3.  Случайное значение от `-X` до `+X`, которое прибавляется к `Fireball Fire Interval`;

        Если стоит на `1`, к задержке между выстрелами фаерболлом прибавляется случайное значение от `-1` до `1`.

    4.  Скорость анимации выстрела Хаска.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Задержка между выстрелами фаерболлом.

    4.  Случайное значение от `-X` до `+X`, которое прибавляется к `Fireball Fire Interval`;

        Если стоит на `1`, к задержке между выстрелами фаерболлом прибавляется случайное значение от `-1` до `1`.

    5.  Скорость анимации выстрела Хаска.

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Задержка между выстрелами фаерболлом.

    3.  Случайное значение от `-X` до `+X`, которое прибавляется к `Fireball Fire Interval`;

        Если стоит на `1`, к задержке между выстрелами фаерболлом прибавляется случайное значение от `-1` до `1`.

    4.  Скорость анимации выстрела Хаска.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Задержка между выстрелами фаерболлом.

    4.  Случайное значение от `-X` до `+X`, которое прибавляется к `Fireball Fire Interval`;

        Если стоит на `1`, к задержке между выстрелами фаерболлом прибавляется случайное значение от `-1` до `1`.

    5.  Скорость анимации выстрела Хаска.

    </div>

    !!! info "Note"
        Есть ещё один параметр в Harder- и Nightcore-зедах который называется __`Low Intensity Attack Scale of Fireball Interval`__, однако он не используется, потому что механика [Game Conductor'а](https://wiki.killingfloor2.com/index.php?title=Mechanics_(Killing_Floor_2)#Gameplay_-_Game_Conductor) отключена на HoE+ и CD, соответственно параметр неактуален.

        То же самое с элитными версиями (EDAR'ами), которые полностью отключены на HoE+/Precision серверах.

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
    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Шанс того, что зед начнёт бежать при получении урона.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Шанс того, что зед начнёт бежать при получении урона.

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Шанс того, что зед начнёт бежать при получении урона.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Шанс того, что зед начнёт бежать при получении урона.

    </div>

    !!! info "Параметр __`Solo Damage Modifier`__ не был затронут в качестве компромисса для публичных серверов; опция по большей части актуальна в соло-матчах, которые чаще происходят при использовании режима SoloMode из [CD CP](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175), но на HoE+ это не так актуально."

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Получение урона от Мясника замедляет передвижение игрока на указанное значение в течение `2с`.

        !!! warning "Эта механика не завершена, поэтому на текущий момент не активна."

    !!! pivo-zeds annotate "Pivo Zeds (1)"
          ``` ini
          Walk Speed        = 220 +
          Sprint Speed      = 650 +
          Base Damage       = 30
          Hit Range         = 200
          Bleedout Time     = 2s +   (2)
          Chainsaw Slow     = {--0%--}     (3)
          ```
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Получение урона от Мясника замедляет передвижение игрока на указанное значение в течение `2с`.

        !!! warning "Эта механика не завершена, поэтому на текущий момент не активна."

    !!! harder-zeds annotate "Harder Zeds"
          ``` ini
          Walk Speed        = 250 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 200
          Bleedout Time     = 2s     (1)
          Chainsaw Slow     = {--0%--}     (2)
          ```
    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Получение урона от Мясника замедляет передвижение игрока на указанное значение в течение `2с`.

        !!! warning "Эта механика не завершена, поэтому на текущий момент не активна."

    !!! nightcore-zeds annotate "Nightcore Zeds (1)"
          ``` ini
          Walk Speed        = 260 +
          Sprint Speed      = 700 +
          Base Damage       = 35
          Hit Range         = 225
          Bleedout Time     = 2.5s + (2)
          Chainsaw Slow     = {--20% +--}  (3)
          ```

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Получение урона от Мясника замедляет передвижение игрока на указанное значение в течение `2с`.

        !!! warning "Эта механика не завершена, поэтому на текущий момент не активна."

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Как только Флешпаунд устанавливает визуальный контакт с игроком, он автоматически приходит в ярость по окончании таймера.

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
    1.  * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы;

        * Скины альбиносов применены к Сталкеру, Толстяку, Хаску, Сирене, Скрейку и Флешпаунду.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Как только Флешпаунд устанавливает визуальный контакт с игроком, он автоматически приходит в ярость по окончании таймера.

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

    1.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    2.  Как только Флешпаунд устанавливает визуальный контакт с игроком, он автоматически приходит в ярость по окончании таймера.

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

    1.  * Зеды не атакуют друг друга целенаправленно;

        * Зеды не проигрывают анимацию торжества при убийстве игрока;

        * Отключена 10%-ная случайная вариация скорости передвижения из ваниллы.

    2.  Время, по истечении которого тело зеда падает на землю после обезглавливания.

    3.  Как только Флешпаунд устанавливает визуальный контакт с игроком, он автоматически приходит в ярость по окончании таймера.

    </div>

    !!! info "Мини-отбивальщики полностью отключены на Precision/HoE+ серверах."
