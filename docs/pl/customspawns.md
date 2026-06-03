# Zmodyfikowany system spawnu zetów

[](){ #special-squad-count-pct-def }[Special Squad Count Percentage](commands.md#special-squad-count-pct) (lub zmodyfikowany system spawnu zetów) opracowany został specjalnie na potrzeby serwerów typu HoE+ i stanowi najważniejszy parametr regulacji poziomu trudności. Pozwala na zmiany w czasie rzeczywistym, co daje możliwość na dostosowanie poziomu w czasie trwania fali. 

Na serwerach #05.1, #06, #07, #07.1 oraz #08 dany system włączony jest domyślnie.

Komendy związane z danym systemem:

* [`!specialsquadcountpct`](commands.md#special-squad-count-pct) lub [`!sscp`](commands.md#special-squad-count-pct)

* [`!disablecustomsquadspawns`](commands.md#disable-custom-squad-spawns) lub [`!dcss`](commands.md#disable-custom-squad-spawns)

## Działanie

Jest to system, który łączy ze sobą [domyślny system spawnu](https://wiki.killingfloor2.com/index.php?title=ZED_Spawning) i [Controlled Difficulty](https://github.com/notblackout/kf2-controlled-difficulty/blob/master/spawn.md), co pozwaliło na stworzenie unikalnego systemu, który jest jednocześnie wszystkim dobrze znany i znacząco podnosi poprzeczkę w poziomie trudności.

Najważniejsze cechy:

* Główna mechanika podobna jest do domyślnego systemu spawnu, dokładnie takiego, który występuje na serwerach typu Vanilla. Opiera się ona na spawnie grup zetów - zwykłej lub specjalnej grupie;

* Zwykłe grupy zedów składają się główne z pomniejszych zetów[^1] oraz ze średnich[^2], podczas gdy specjalne grupy zetów włączają w siebie, pomimo średnich zetów, także duże zety[^3];

* W odróżnieniu od spawnu na serwerach typu Vanilla, cykl spawnu na serwerach typu HoE+ opiera się na stosunku  spawnu danych grup. Wyznacznikiem danej kategorii jest parametr [`special squad count percentage`](commands.md#special-squad-count-pct);

* W odróżnieniu od CD, kolejność spawnów wewnątrz cyklu jest przypadkowa, przez co gra jest mniej przewidywalna;

* Ponieważ szczególne grupy zetów w większości składają się z dużych zetów[^3], ustawienia parametru special squad reguluje stosunek pomiędzy wszystkimi typami przeciwników;

* Na każdą falę przypada indywidualny zestaw zwykłych i specjalnych grup zetów, dlatego też każda z nich ma swoje limity ilości i rodzajów zetów;

* Jeśli parametr `!sscp` ustawić na minimalne znaczenie (0.01), gra staje się maksymalnie podobna do gry na serwerach typu Vanilla (co daje 10% dużych zetów[^3] na dziesiątej fali). Maksymalna wartość (1.0) oznacza około 29-30% dużych zetów[^3], co skutkuje cyklem podobnym pod względem poziomu trudności `ts_mig_v3` z CD.

## Użytkowanie

Ustawienia danego systemu spawnu regulowane są przez komendę [`!specialsquadcountpct`](commands.md#special-squad-count-pct) lub [`!sscp`](commands.md#special-squad-count-pct).

Domyślne wartości dla serwerów HoE+ wynoszą od `0.1` (10%) do `0.3` (30%).

Wartości w zakresie `0.5`-`0.75` mogą stanowić wyzwanie nawet dla graczy, którzy są stałymi bywalcami na serwerach HoE+. 

!!! example "Przykłady użycia:"

    * `!sscp 0.15`

    * `!sscp 0.5`

    * `!sscp 1`

Wpisanie wartości powyżej `1` (maksymalna wartość) nie spowoduje żadnego zwiększenia parametru. Wpisanie `0` przywróci wartości domyślne, które odpowiadają danemu serwerowi. Z powodu technicznych ograniczeń, nie ma możliwość ustawnienia wartości na `0`. Najmniejszą wartością, którą można wpisać z daną komendą jest `0.01`. Podobny efekt będzie mieć użycie komendy [`!dcss`](commands.md#disable-custom-squad-spawns).

Jeśli [`disablecustomsquadspawns`](commands.md#disable-custom-squad-spawns) ustawiona została na `true`, to zmodyfikowany system spawnu zetów zostanie wyłączony. Spowoduje to włączenie domyślnego systemu spawnu.

## Dodatkowe możliwości regulowaia spawnu

Oprócz opisanego powyżej systemu, istnieje jeszcze jedna możliwość wpływania na poziom trudności w grze z pomocą spawnu. Jest to tzw. szansa spawnu dużych zetów[^3] ([`large zed spawn chance`](commands.md#large-zed-spawn-chance)).

[](){ #large-zed-spawn-chance-def }[`Large zed spawn chance`](commands.md#large-zed-spawn-chance) jest to możliwość spawnu dużych zetów[^3] poprzez losowy wybór rodzaju zeta w momencie spawnu.

Jak to działa?

* Jeśli [`!dlzsc`](commands.md#disable-large-zed-spawn-chance) przybiera wartość `false`, istnieje szansa na zmianę przypadkowego pomniejszego[^1] lub średniego zeta[^2] na dużego zeta[^3] w stosunku 60:40 (60% szansy, że będzie to rzeźnik oraz 40% na mięśniaka);

* Procetnową szansę wyznacza się z pomocą komendy [`!lzsc`](commands.md#large-zed-spawn-chance), przyjmującej wartości od `0` do `1`;

* Częstotliwość prawdopodobieństwa zmiany na serwerze wynosi 0.5 na sekundę (zakładając, że w meczu jest 6 graczy);

* Opcja ta na serwerach została domyślnie wyłączona, ponieważ została zamieniona przez [zmodyfikowany system spawnu zetów](#special-squad-count-pct-def), jednakże wciąż można jej używać, nawet jednocześnie z systemem [SSCP](#special-squad-count-pct-def);

* Pomimo faktu, że dany system zapewnia płynniejszy potok dużych zetów [^3] w czasie fali, to wciąż może sprawiać wyzwanie dla graczy;

* Zaleca się stosowanie danej funkcji z niższymi wartościami parametru `!sscp`;

* Jak pokazuje doświadczenie, wartości w zakresie `0.05`-`0.1` w połączeniu z `!sscp 0.3` skutkują dość pokaźnym spawnem dużych zetów[^3];

* Istnieje także oraniczenie ilości dużych zetów, tzw. [Max Large Monsters](commands.md#disable-max-large-monsters), które, jak nazwa wskazuje, pozwala ograniczyć ilość żywych, dużych zetów[^3] na mapie. Domyślnie została wyłączona. Jej pierwotne przeznaczenie zakładało współistninie razem z systemem [`!lzsc`](commands.md#large-zed-spawn-chance).

## Spawny w wentylacji i włazach kanalizacyjnych

Na serwerach typu Vanilla gra dopuszcza spawny w wentylacji lub we włazach kanalizacyjnych, zazwyczaj są to pomniejsze zety. Standardowe mapy zostały zaprojektowane tak, by niejako zmusić graczy do przemieszczania się na niej (tzw. kite). Dzieje się tak, ponieważ spawn przeciwników rozmieszczony jest dookoła graczy i by drużyna nie została zduszona przez napływające zety, musi stale się poruszać. Dlatego też, by stworzyć bardziej komfortowe warunku dla graczy, którzy preferują miej chaotyczny styl gry, spawny pomniejszych zetów w wentylacji i włazach kanalizacyjnych zostały wyłączone. Dotyczy to tylko serwerów HoE+, gdzie opcja ta jest domyślnie wyłączona. Na Vanille taka opcja również jest możliwa, natomiast należy uregulować ją ręcznie.

[`!disableventspawns`](commands.md#disable-vent-spawns) lub [`!dvs`](commands.md#disable-vent-spawns) `true` pozwala wyłączyć spawn w wentylacji i włazach. Należy pamiętać, że domyślnie dana opcja jest już włączona na wszystkich serwerach HoE+.

[^1]: Pomniejsze zety (Trash) — Cysta, wszystkie Pełzacze, Zmora, Siepacz, itd.
[^2]: Średnie zety (Mediums) — Syrena, Spaślak, Truchło, Dręczyciel oraz Rozpruwacz.
[^3]: Duże zety (Larges) — Rzeźnik oraz Mięśniak.