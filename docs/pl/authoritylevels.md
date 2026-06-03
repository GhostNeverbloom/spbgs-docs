# System autoryzacji gracza

## Podstawowe informacje

Wszystkie dostępne na serwerach komendy działają w oparciu o system autoryzacji gracza. Kilka podstawowych informacji o danym systemie:

* Wszystkie komendy mają z góry określony poziom dostępu, który wymagany jest do ich zastosowania;

* Istnieją 4 poziomy dostępu: `Gracz`, `Pomocnik`, `Moderator` oraz `Admin`;

* Rola z wyższym poziomem dostępu posiada prawa, które dostępne są graczowi z niższą rolą. Gracz z rolą  `Moderator` posiada więc wszystkie prawa, które posiada gracz z rolą `Pomocnik` wraz z rozszerzonym dostępem odpowiednim dla swojej roli. Rola `Admin` jest najwyższym poziomem autoryzacji na serwerze;

* Komendy, które wprowadził gracz o roli niższej, niż jest wymagana do jej zastosowania może rozpocząć głosowanie;

* Wymagana rola do użycia określonej komendy zależy od serwera (Vanilla lub HoE+);

* Szczegółowa informajca znajduje się [poniżej](#authority-levels).

[](){ #authority-levels }
## Poziomy dostępu

Poniższa lista przedstawia spis dostępnych na serwerach komend, wymagany minimalny poziom autoryzacji oraz możliwość rozpoczęcia głosowania za użycie danej komendy:

| Komenda | Min. poziom dostępu (Vanilla) | Min. poziom dostępu (HoE+) | Możliwość głosowania (Vanilla) | Możliwość głosowania (HoE+) |
| --- | --- | --- | --- | --- |
| [!info](commands.md#info) | Gracz | Gracz | - | - |
| [!ms](commands.md#my-stats) | Gracz | Gracz | - | - |
| [!stats](commands.md#stats) | Gracz | Gracz | - | - |
| [!sr](commands.md#switch-role) | Gracz | Gracz | - | - |
| [!lwp](commands.md#lock-weapon-pickup) | Gracz | Gracz | - | - |
| [!lowp](commands.md#lock-other-weapon-pickup) | Gracz | Gracz | - | - |
| [!swpm](commands.md#show-weapon-pickup-messages) | Gracz | Gracz | - | - |
| [!wpat](commands.md#weapon-pickup-ammo-threshold) | Gracz | Gracz | - | - |
| [!dit](commands.md#disable-item-drop) | Gracz | Gracz | - | - |
| [!pt](commands.md#pause-trader) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!upt](commands.md#unpause-trader) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!st](commands.md#skip-trader) | Pomocnik | Pomocnik | `Nie` | `Nie` |
| [!kz](commands.md#kill-zeds) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!nm](commands.md#next-map) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!scw](commands.md#set-current-wave) | Moderator | Moderator | `Nie` | `Nie` |
| [!ew](commands.md#end-wave) | Moderator | Moderator | `Nie` | `Tak` |
| [!nw](commands.md#next-wave) | Moderator | Moderator | `Nie` | `Nie` |
| [!mv](commands.md#map-vote) | Moderator | Moderator | `Tak` | `Tak` |
| [!spw](commands.md#set-password) | Pomocnik | Pomocnik | `Nie` | `Nie` |
| [!mm](commands.md#max-monsters) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!ws](commands.md#wave-size) | Moderator | Moderator | `Nie` | `Nie` |
| [!dcws](commands.md#disable-custom-wave-size) | Moderator | Moderator | `Nie` | `Nie` |
| [!wsf](commands.md#wave-size-fakes) | Moderator | Moderator | `Nie` | `Nie` |
| [!dwsf](commands.md#disable-wave-size-fakes) | Moderator | Moderator | `Nie` | `Nie` |
| [!wsm](commands.md#wave-size-multiplier) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!cs](commands.md#cohort-size) | Pomocnik | Pomocnik | `Nie` | `Tak` |
| [!dk](commands.md#dosh-kill) | Pomocnik | Pomocnik | `Nie` | `Nie` |
| [!am](commands.md#ammo-multiplier) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!sscp](commands.md#special-squad-count-pct) | Moderator | Pomocnik | `Nie` | `Tak` |
| [!dcss](commands.md#disable-custom-squad-spawns) | Moderator | Moderator | `Nie` | `Nie` |
| [!lzsc](commands.md#large-zed-spawn-chance) | Moderator | Moderator | `Nie` | `Tak` |
| [!dlzsc](commands.md#disable-large-zed-spawn-chance) | Moderator | Moderator | `Nie` | `Tak` |
| [!dvs](commands.md#disable-vent-spawns) | Pomocnik | Pomocnik | `Tak` | `Tak` |
| [!dmlm](commands.md#disable-max-large-monsters) | Moderator | Moderator | `Nie` | `Nie` |
| [!ad](commands.md#ai-difficulty) | Moderator | Pomocnik | `Tak` | `Tak` |
| [!dcad](commands.md#disable-custom-ai-difficulty) | Moderator | Pomocnik | `Tak` | `Tak` |
| [!pl](commands.md#player-list) | Gracz | Gracz | - | - |
| [!kill](commands.md#kill) | Moderator | Moderator | `Nie` | `Nie` |
| [!kick](commands.md#kick) | Moderator | Moderator | `Nie` | `Nie` |
| [!kicksessionban](commands.md#kick-session-ban) | Moderator | Moderator | `Nie` | `Nie` |
| [!ff](commands.md#friendly-fire) | Moderator | Moderator | `Tak` | `Tak` |
| [!bp](commands.md#burn-player) | Moderator | Moderator | `Nie` | `Nie` |
| [!pp](commands.md#puke-player) | Moderator | Moderator | `Nie` | `Nie` |
| [!ps](commands.md#player-size) | Pomocnik | Pomocnik | `Nie` | `Nie` |
| [!tp](commands.md#teleport-player) | Pomocnik | Pomocnik | `Nie` | `Nie` |
