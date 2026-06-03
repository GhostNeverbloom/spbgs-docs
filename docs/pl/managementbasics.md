# Podstawowa informacja

## Jak posługiwać się komendami

Do obsługi komend na serwerze służą zarówno [pole tekstowe czatu](commands.md), jak i automatyczne menu.

Automatyczne menu dostępne jest pod klawiszem `J`. Klawisz ten można zmienić poprzez ręczną zmianę ustawień w pliku `KFInput.ini` lub z pomocą konsoli, bindując wbrany klawisz z pomocą komendy `setbind <nazwa klawisza> GBA_ShowVoteComms`. Należy pamiętać, by bindując wybrany klawisz nie powielał on innej przypisanej funkcji. 

??? question "Jak prawidłowo edytować plik ^^KFinput.ini^^?"

    * Upewnij się, że gra jest Wyłączona;

    * Otwórz folder `..\Documents\My Games\KillingFloor2\KFGame\Config`;

	* Otwórz plik o nazwie `KFinput.ini`;

	* Używając funkcji wyszukiwania (Ctrl+F) znajdź:

        ``` ini
		Bindings=(Name="J",Command="GBA_ShowVoteComms",Control=False,Shift=False,Alt=False,bIgnoreCtrl=False,bIgnoreShift=False,bIgnoreAlt=False)
		```

    * Zmień przypisany klawisz `J` na dowolny wybrany klawisz.

	!!! warning "W danym pliku `GBA_ShowVoteComms` powyższa fraza występuje więcej niż jeden raz, dlatego też należy dokładnie sprawdzić, gdzie dokonujemy zmian!"

W automatycznym menu wybrane zostały najczęściej używane komendy, które dzięki łatwej dostępności zapewniają funkcjonalność i znacząco polepszają komfort gry. 

!!! info "Należy pamiętać, że funkcjonowanie niektórych komend zależne jest od rodzaju serwera (Vanilla/ HoE+), a dokładna lista dostępnych komend znajduje się [tutaj](authoritylevels.md#authority-levels)."

## Ustawienia konsoli

Jak już wcześniej [wspomniano](commands.md), wszystkie dostępne komendy można przypisać do dowolnego klawisza tak samo, jak pozostałe funkcje w grze. Każdą komendę należy poprzedzić `say`, np.:

`setbind X say !pausetrader`

Na serwerach dostępna jest także unikalna opcja o nazwie `CorpseCleanup`. Działa ona identycznie jak funkcja `ClearCorpses` z [CD Chokepoints Edition](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175), a jej ponowne użycie możliwe jest po 60 sekundach, podobnie jak w [CD CP](https://steamcommunity.com/sharedfiles/filedetails/?id=2052571175).

!!! info "Komenda `ClearCorpses` szczególnie popularna jest wśród graczy trybu CD i używana jest w celu szybkiego wysczyszczenia mapy z zasłaniających ekran trupów zetów. Opcja ta jest przydatna przede wszystkim dla komandosa, poprzez natychmiastowe usunięcie ciał martwych zetów, łatwiej skupić mu się na dostępnych zetach w celu odświeżenia czasu zetów."

Jeśli jesteś graczem trybu CD warto jest przypisać obie komendy do jednego klawisza:

`setbind ThumbMouseButton2 "ClearCorpses|CorpseCleanup"`

!!! note annotate "Uwaga"
    W pliku `KFGame.ini` znajduje się parametr, który odpowiada za maksymalną ilość trupów, które mogą jednocześnie znajdować się na mapie -  `MaxDeadBodies`. Zaleca się, by ustawić dany parametr na minimalną wartość, czyli `4`. Pomoże to nieco poprawić wydajność gry i usunąć niepotrzebne elementy z ekranu. 

	* Upewnij się, że gra jest wyłączona;
	* Оtwórz folder `..\Documents\My Games\KillingFloor2\KFGame\Config`;
	* Znajdź w nim plik `KFGame.ini`;
	* Otwórz plik w notatniku lub za pomocą [Notepad++](https://github.com/notepad-plus-plus/notepad-plus-plus/releases), Sublime, VSCode;
	* Za pomocą funkcji wyszukiwania (Ctrl+F), znajdź `MaxDeadBodies`;
	* Zmień wartość parametru na `4` i zapisz plik.

## Trochę informacji na temat komend

Na naszych serwerach dostępne są różne komendy, wśród których jedne są mniej, a niektóre bardziej przydatne. W zależności od indywidualnych preferencji sam możesz zadecydować, któe z nich pozwolą Ci dostosować rozgrywkę tak, byś mógł/mogła cieszyć się w pełni grą. 

Poniżej znajdziesz opis kilku parametrów, które najbardziej wpływają na proces gry.

### Max Monsters

[`!mm`](commands.md#max-monsters) lub [`MaxMonsters`](commands.md#max-monsters) jest jednym z ważniejszych parametrów ponieważ reguluje ilość zetów, które mogą być na mapie jednocześnie. Na zwykłych serwerach (tzw. Vanilla) liczba ta, przy obecności 6 graczy, wynosi 32 (standardowo na naszych serwerach SPB-GS jest to 36). Dla serwerów typu HoE+ standardową wartością jest 56.

* Możliwość ręcznego regulowania parametru MaxMonsters zakłada dostosowanie poziomu trudności do indywidyualnych preferencji gracza/drużyny tak, by ilość zetów na mapie była dopasowana do różnych czynników, takich jak umiejętności drużyny czy mapy.  
  
* Na niektórych mapach odległość pomiędzy graczem a miejscem spawnu zetów wymusza obronę na bliższe dystanse (są to np. mapy typu holdout), w innych przypadkach miejsca spawnu są tak dalekie od gracza, że potok zetów jest mały i rozgrywka rozciąga się w czasie (Desolation Original, карты Dust, Crystal Caverns и т.д.). W celu lepszego zbalansowania map można więc regulować parametr MaxMonsters, pamiętając, by każdemu w lobby takie zmiany odpowiadały.

* Jak pokazuje praktryka, mapy typu holdout (np. mapa Rdzeń zasilający/ Power core) są lepiej zbalansowane przy mm 48 lub mniejszej. Wyższe wartości mogą przytłoczyć graczy, a nawet wpłynąć na wydajność. Na otwartych i dużych mapach wartości te spokojnie mogą przekraczać 64 mm.

* Nie zaleca się przekraczać wartości 72 mm. Przy wysokim mm gra staje się chaotyczna i może prowadzić do problemów z wydajnością.

* MaxMonsters jest domyślnie parametrem dynamicznym i zmienia się wraz z ilością __żywych__ graczy w grze (12 -> 36 Vanilla и 18 -> 56 HoE+). Regulując dany parametr ręcznie należy mieć ten fakt na uwadze, ponieważ po użyciu komendy przedstaje zmieniać się wraz z ilością graczy.

* Regulacja parametru MaxMonsters jest najlepszym sposobem dla urozmaicenia gry na serwerach typu Vanilla. 
Jeśli chodzi o serwery typu HoE+, na nich ten parametr już został optymalnie zmodyfikowany i jest dostosowany gry na takim poziomie trudności.

* Maksymalną wartością dla danego parametru jest 200 (jesteśmy świadomi ludzkiej ciekawości i chęci eksperymentu, jednakże chcemy, by serwery działały sprawnie).

### Special Squads

[`!sscp`](commands.md#special-squad-count-pct), czy też [`Special Squad Count Percentage`](commands.md#special-squad-count-pct), jest to najważniejszy parametr do regulowania gry na serwerach typu HoE+.
Możliwość zwiększania ilosci dużych [^1] i średnich[^1] zetów jest jednym z kluczowych elementów wpływających na poziom trudności danych serwerów, na których włączona jest domyślnie. Więcej na jej temat [tutaj](customspawns.md).

* Na serwerach typu HoE+ jest to najważniejszy element regulacji poziomu trudności, dlatego też możliwość ręcznego ustawienia parametru powinna być dobrana tak, by pasowała do umiejętności drużyny.

* Domyślne ustawienia Special Squads zależne są od rodzaju serwera HoE+ (na 5.1 jest to 20%; 6. - 10%; 7. - 15%; 7.1. - 30%; 8. - 30%). Dla nowych graczy HoE+ są to wystarczające wartości, jednak z bardziej doświadczoną drużyną gra może stać się mniej dynamiczna i nie stanowić wystarczającego wyzwania. Zalecamy jednak nie przekraczać wartości parametru powyżej 0.75 (czyli 75%).

* Jak już zostało wspomniane, przy ustawieniach danego parametru należy wziąć pod uwagę umiejętności CAŁEJ drużyny. Z tego też powodu uprzejmie prosimy __NIE__ ustawiać ekstremalnych wartości parametru, jeśli umiejętności graczy nie są adekwatne do danego poziomu. Warto także zapytać członków drużyny, czy dany poziom im pasuje. Gra kooperacyjna powinna stwarzać komfortowe warunku dla wszystkich, i słabszych i tych mocniejszych graczy.

* W większości audytoria serwerów HoE+ jest stała, dlatego gra może okazać się bardziej wymagająca. Odpowiedzialność za poziom trudności w pełni leży na drużynie, dlatego jeśli gra jest zbyt trudna, zakomunikuj to swojej drużynie lub po prostu spróbuj zagrać na innym serwerze. Wzajemny szacunek i zrozumienie pomogą budować nam wszystkim przyjazną atmosferę i pozwoli cieszyć się grą. 

* `!sscp` dostępne jest także na serwerach typu Vanilla, natomiast nie zalecamy ekserymentów w tym zakresie. Serwery typu Vanilla przeznaczone są dla graczy słabszych, początkujących lub po prostu tych, którzy zmian nie lubią. Jeśli więc chcesz postawić sobie wyzwanie, zagraj na serwerach HoE+.

### AI Difficulty

System [AI Difficulty](aidifficulty.md) pozwala na wybranie określonego zestawu zetów w czasie rzeczywistym. 


Jeśli ta opcja nie jest domyśnie włączona, to można ją aktywować za pomocą komendy [`!dcad`](commands.md#disable-custom-ai-difficulty) z wartością `false`, i regulować z pomocą komendy [`!ad`](commands.md#ai-difficulty) z odpowiednim [indeksem](aidifficulty.md#available-presets).

!!! info "Szczegółowe informacje na temat dostępności zestawów w zależności od serwera znajdziesz [tutaj](aidifficulty.md#available-presets). Na serwerach typu Vanilla wybrane zestawy zetów zostały wyłączone."

* [`!dcad`](commands.md#disable-custom-ai-difficulty) `false` - możliwość wyboru zestawów zetów zostaje włączona, `true` wyłącza daną możliowość; domyślnie jest włączona na serwerach typu HoE+.

* [`!ad`](commands.md#ai-difficulty) [`<index>`](aidifficulty.md#available-presets) możliwość wyboru zestawu zetów. Zmiana zachodzi w czasie rzeczywistym, a więc od razu.

* Regulacja danego parametru powoduje znaczącą zmianę w poziomie trudności.

* Zaleca się nie wybierać zestawu trudniejszego niż [`Pivo`](aidifficulty.md#ai-difficulty-presets) jeśli drużyna nie jest Wam znana. 

### Regulacja ilośći zetów

Istnieje jeszcze jedna dostępna opcja regulacji ilości przeciwników, mianowicie jest to [mnożnik długości fali](commands.md#wave-size-multiplier).

!!! note "Uwaga"
	Zaleca się nie ustawiać ekstremalnych wartości danego parametru, może to prowadzić do pogorszenia wydajności oraz sprawi, że gra stanie się niezbalansowana, szczególnie jeśli chodzi o ilość amunicji. 

	Jeśli dokonujesz zmiany danego parametru pamiętaj, by przystosować do niego [mnożnik amunicji](commands.md#ammo-multiplier).

* Na strandardowych serwerach, przy poziomie trudności Pieło na Ziemi i 6 graczach, na ostatnich dwóch falach (przy długości gry 10 fal), wychyodzi łącznie `321` zetów;

* Na serwerach typu Precision/HoE+ na ostaniej fali ogólna liczba zetów wynosi `360`, podobnie mogłoby być, gdyby w grze było obecnych 9 graczy;

* Gra na serwerach typu Vanilla, przy ustawieniach 36 mm i ze standardową długością fali, trwa około `40-45` minut, podczas gdy gra na serwerach typu Precision, przy zwiększonym mm do 56, gra trwa około `30-35` minut;

* Wspomniana statystyka pokazuje, że wartość parametru MaxMonsters w stosunku do długości fali, ma bezpośredni wpływ na czas trwania meczu;

* Styl gry na serwerach typu Precision został skonfigurowany tak, by był intensywny i jednocześnie nie był zbyt rozciągniętym w czasie;

* W związku z powyższym, należy wziąć po uwagę to, jak przy zmianach konkretnych parametrów zmieni się styl gry i czy zmiana długości fali nie spowoduje, że gra będzie się dłużyć.

[^1]: Średnie zety (Mediums) — truchło, syrena, spaślak, dręczyciel oraz rozpruwacz.
[^2]: Duże zety (Larges) — Rzeźnik oraz mięśniak.