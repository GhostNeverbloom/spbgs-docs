# Система ролей авторизации

## Основы

Все чат-команды работают согласно системе уровней доступа. Работает это так:

* Все команды имеют определённый уровень доступа, который необходим для их выполнения;

* Всего есть 4 уровня доступа: `Игрок`, `Помощник`, `Модератор` и `Админ`;

* Каждый последующий уровень (роль) включает в себя полномочия предыдущей роли, таким образом `Модератор` находится выше `Помощника`, а `Админ` стоит выше обоих;

* Некоторые команды, введённые ролью ниже чем необходимой, начнут голосование за их применение;

* Требование уровня доступа у каждой команды может отличаться в зависимости от сервера на котором они задействованы;

* More detailed info on command groups you can find [below](#authority-levels).
* Более детальная информация 

[](){ #authority-levels }
## Уровни доступа

Для спокойствия доступность определённых команд разная в зависимости от сервера. Здесь представлен релевантный список команд с соответствующими полномочиями:

| Команда | Мин. уровень (ванилла) | Мин. уровень (HoE+) | Голосуемая (ванилла) | Голосуемая (HoE+) |
| --- | --- | --- | --- | --- |
| [!info](commands.md#info) | Игрок | Игрок | - | - |
| [!ms](commands.md#my-stats) | Игрок | Игрок | - | - |
| [!stats](commands.md#stats) | Игрок | Игрок | - | - |
| [!sr](commands.md#switch-role) | Игрок | Игрок | - | - |
| [!lwp](commands.md#lock-weapon-pickup) | Игрок | Игрок | - | - |
| [!lowp](commands.md#lock-other-weapon-pickup) | Игрок | Игрок | - | - |
| [!swpm](commands.md#show-weapon-pickup-messages) | Игрок | Игрок | - | - |
| [!wpat](commands.md#weapon-pickup-ammo-threshold) | Игрок | Игрок | - | - |
| [!dit](commands.md#disable-item-drop) | Игрок | Игрок | - | - |
| [!pt](commands.md#pause-trader) | Помощник | Помощник | `Да` | `Да` |
| [!upt](commands.md#unpause-trader) | Помощник | Помощник | `Да` | `Да` |
| [!st](commands.md#skip-trader) | Помощник | Помощник | `Нет` | `Нет` |
| [!kz](commands.md#kill-zeds) | Помощник | Помощник | `Да` | `Да` |
| [!nm](commands.md#next-map) | Помощник | Помощник | `Да` | `Да` |
| [!scw](commands.md#set-current-wave) | Модератор | Модератор | `Нет` | `Нет` |
| [!ew](commands.md#end-wave) | Модератор | Модератор | `Нет` | `Да` |
| [!nw](commands.md#next-wave) | Модератор | Модератор | `Нет` | `Нет` |
| [!mv](commands.md#map-vote) | Модератор | Модератор | `Да` | `Да` |
| [!spw](commands.md#set-password) | Помощник | Помощник | `Нет` | `Нет` |
| [!mm](commands.md#max-monsters) | Помощник | Помощник | `Да` | `Да` |
| [!ws](commands.md#wave-size) | Модератор | Модератор | `Нет` | `Нет` |
| [!dcws](commands.md#disable-custom-wave-size) | Модератор | Модератор | `Нет` | `Нет` |
| [!wsf](commands.md#wave-size-fakes) | Модератор | Модератор | `Нет` | `Нет` |
| [!dwsf](commands.md#disable-wave-size-fakes) | Модератор | Модератор | `Нет` | `Нет` |
| [!wsm](commands.md#wave-size-multiplier) | Помощник | Помощник | `Да` | `Да` |
| [!cs](commands.md#cohort-size) | Помощник | Помощник | `Нет` | `Да` |
| [!dk](commands.md#dosh-kill) | Помощник | Помощник | `Нет` | `Нет` |
| [!am](commands.md#ammo-multiplier) | Помощник | Помощник | `Да` | `Да` |
| [!sscp](commands.md#special-squad-count-pct) | Модератор | Помощник | `Нет` | `Да` |
| [!dcss](commands.md#disable-custom-squad-spawns) | Модератор | Модератор | `Нет` | `Нет` |
| [!lzsc](commands.md#large-zed-spawn-chance) | Модератор | Модератор | `Нет` | `Да` |
| [!dlzsc](commands.md#disable-large-zed-spawn-chance) | Модератор | Модератор | `Нет` | `Да` |
| [!dvs](commands.md#disable-vent-spawns) | Помощник | Помощник | `Да` | `Да` |
| [!dmlm](commands.md#disable-max-large-monsters) | Модератор | Модератор | `Нет` | `Нет` |
| [!ad](commands.md#ai-difficulty) | Модератор | Помощник | `Да` | `Да` |
| [!dcad](commands.md#disable-custom-ai-difficulty) | Модератор | Помощник | `Да` | `Да` |
| [!pl](commands.md#player-list) | Игрок | Игрок | - | - |
| [!kill](commands.md#kill) | Модератор | Модератор | `Нет` | `Нет` |
| [!kick](commands.md#kick) | Помощник | Помощник | `Да` | `Да` |
| [!kicksessionban](commands.md#kick-session-ban) | Помощник | Помощник | `Да` | `Да` |
| [!ff](commands.md#friendly-fire) | Модератор | Модератор | `Да` | `Да` |
| [!bp](commands.md#burn-player) | Модератор | Модератор | `Нет` | `Нет` |
| [!pp](commands.md#puke-player) | Модератор | Модератор | `Нет` | `Нет` |
| [!ps](commands.md#player-size) | Помощник | Помощник | `Нет` | `Нет` |
| [!tp](commands.md#teleport-player) | Помощник | Помощник | `Нет` | `Нет` |
