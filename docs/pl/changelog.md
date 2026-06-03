# Aktualizacje

Począwszy od maja 2026 roku, poniżej przedstawiono wszystkie aktualizacje serwerów wraz ze szczegółowym opisem zmian i nowości. 

## 31 maja 2026 r.

Niniejszy hotfix wprowadza kilka drobnych zmian względem poprzedniej aktualizacji.

* Naprawiono błąd, który pozwalał na zmianę umiejętności w czasie trwania gry.

* [HoE+] Naprawiono błąd, który spowalniał przeładowanie na SPX 464 Centerfire dla Strzelca Wyborowego.

* [HoE+] Przywrócono przebicie broni na amunicję śrutową, wartość ta została ustalona na (`2`), co oznacza, że może ona przestrzelić do 2 mniejszych zetów. Takie przebicie nie ma negatywnego wpływu na grę, ponieważ pasywny bonus w postaci 500% przebicia wciąż jest wyłączony, natomiast na początkowych falach jest to spore ułatwienie dla gracza.

* [HoE+] Pasywna [umiejętność](changelog.md#armor-regen-passive) Wsparcia, która pozwalała regenerować pancerz w Czasie Zet, została zmodyfikowana i stała się aktywną umiejętnością na poziomie 25-tym, zastępując poprzednią umiejętność o nazwie [^^"sprawne dłonie"^^](changelog.md#support-sleightofhand); od teraz nosi nazwę ^^"Opancerzony"^^ i pozwala natychmiast zregenerować 15 punktów pancerza przy rozpoczęciu Czasu Zet, a także za każdą sekundę Czasu Zet regeneruje 1 punkt pancerza graczowi Wsparcia oraz członkom drużyny w odległości do 8 metrów od gracza w czasie Czasu Zet. Dodatkowo gracz porusza się czterokrotnie szybciej oraz równie szybko zmienia broń w Czasie Zet. 

* [HoE+] Umiejętność Wsparcia dostępna na 25-tym poziomie [^^"Ogień zaporowy"^^](changelog.md#support-barrage) (prawy) od teraz pozwala nie tylko strzelać w czasie rzeczywistym, ale także przeładowywać broń w Czasie Zet.

* Naprawiono błąd, przez który nabój hukowy [КS-23](changelog.md#ks23-announcement) nie eksplodował. Zwiększono także odległość z 15 do 20 metrów, po których nabój eksploduje automatycznie. 

* Zwiększono obrażenia i siłę oszałamiania [КS-23](changelog.md#ks23-announcement) przy użyciu zwykłej amunicji oraz zwiększono siłę efektu ogłuszenia przy użyciu amunicji hukowej.

* Szybkość przeładowania [KS-23](changelog.md#ks23-announcement) zwiększono o 25%. Zwiększono dwukrotnie szybkość zmiany broni.

* [HoE+] Początkowej strzelbie Wsparcia, czyli Mossberg 500, zwiększono obrażenia o 20%, zwiększono szybkostrzelność i zwiększono rozrzut amunicji śrutowej, co ułatwia likwidację mniejszych zetów.

* [HoE+] Zwiększono szybkość przeładowania podwójnych rewolwerów śrutowych HRG (`+15%` zamiast `+10%`). 

* [HoE+] Wprowadzono drobne poprawki balansujące modyfikacje broni Wsparcia. 

* Naprawiono [stronę ze statystykami](http://stats.eyesdeep.blue). [ggv lox]

Jeśli chodzi o plany na przyszłość, to być może zostanie zwiększona szybkość zmiany broni dla Wsparcia na serwerach HoE+, natomiast ostateczna decyzja będzie zależała od wyników testów i obserwacji rozgrywki i to, czy nie naruszy to balansu gry.

## 26 maja 2026 г.

### Słowem wstępu

Niniejsza aktualizacja została poświęcona przede wszystkim zbalansowaniu klasy Wsparcia, szczególnie na potrzeby serwerów HoE+. Z pojawieniem się na serwerach możliwości redagowania niektórych charakterystyk klas, zdecydowałem, że Wsparcie jest właśnie tą klasą, od której warto zacząć. 

Urozmaicenie w postaci strzelb jest przyjemną odskocznią od pozostałego stylu gry na serwerach typu Precision. Pomimo faktu, że nie jest to do końca chaotyczny styl gry, to jednak obecność Wsparcia nie była do końca pożądana i zazwyczaj gracze, którzy dołączali do gry jako Support, byli szybko wyrzucani z serwera. Dlaczego? Pomijając fakt, że większość takich graczy nie jest zaznajomiona z zasadami i stylem gry na HoE+, szczególnie Precision, przez co wprowadzali chaos na przykład przez złe pozycjonowanie lub przez celowe wprowadzanie dużych zetów w stan furii. Choć są to błędy, które gracz może samodzielnie skorygować, to niezależne od grającego pasywne cechy Wsparcia wciąż utrudniały mu bycie pożądanym członkiem drużyny. Mowa tutaj przede wszystkim o pasywnym przebiciu (500% na 25 poziomie) przeciwników, które umożliwiało przestrzeliwanie dużych zetów, przez co te niekontrolowanie wpadały w stan furii. Prowadziło to do nieprzyjemnych sytuacji w postaci rozwścieczonych Rzeźników, biegnących wprost na drużynę. 
Powyższe problemy wymusiły niejako zmiany, które przedstawione zostały w niniejszej aktualizacji. Klasa Wsparcia została nieco zmodyfikowana na potrzeby stylu gry Precision oraz dodano dwie nowe bronie - Sajga 12 i KS-23. 

### Sajga 12 i КS-23

Samopowtarzalna strzelba Sajga 12 to główny element niniejszej aktualizacji. Zastępuje ona strzelbę „S12 Wstrząsacz”. Większość parametrów pozostała taka sama jak w standardowej broni, natomiast zmodyfikowana została domyślna ilość amunicji generującej falę uderzeniową, a sama broń została przeniesiona do Tier 5.

<video autoplay loop muted playsinline>
<source src="http://eyesdeep.blue/videos/KF2_S12_Demo_001.mp4" type="video/mp4">
</video>

Niemniej jednak na uwagę zasługuje również kolejna nowość, a mianowicie strzelba [KS-23](){ #ks23-announcement }. Została ona dodana na wszystkie serwery, dzięki czemu jest dostępna nie tylko na HoE+, ale również na standardowych serwerach. Więcej informacji na temat KS-23 znajdziesz poniżej.

<video autoplay loop muted playsinline>
<source src="http://eyesdeep.blue/videos/KF2_KS23_Demo_002.mp4" type="video/mp4">
</video>

!!! tip "Kliknięcie prawym przyciskiem myszy na filmie otwiera menu, w którym dostępne są funkcje sterowania odtwarzaniem."

### Szczegółowa lista zmian

!!! warning "Dzięki wprowadzonym zmianom pojawiła się możliwość lokalnego zapisywania wybranych umiejętności. Należy jednak pamiętać, że pliki konfiguracyjne są początkowo puste, dlatego przy pierwszym wejściu na serwer trzeba ręcznie wybrać dostępne umiejętności!"

??? info "Zmiany specjalizacji Wsparcie (HoE+)"
    
    * Pasywna umiejętność ^^"Penetracja"^^, która na 25. poziomie zapewniała +500% przebicia broni specjalizacji, została zastąpiona pasywnym zmniejszeniem rozrzutu broni specjalizacji o 25%;

    * Umiejętność 15. poziomu „Przeciwpancerny strzał” (lewa) została zmieniona. Zamiast zwiększać przebicie pocisków, od teraz zwiększa przebicie pancerza. Premia do obrażeń w wysokości 10% pozostaje bez zmian;

    * Umiejętność 15. poziomu „Silny czok” (prawa) od teraz zwiększa skupienie wystrzałów o 25% zamiast o 50%. Zmniejszenie bonusu wynika z dodania pasywnej redukcji rozrzutu. W połączeniu z tą umiejętnością całkowite zmniejszenie rozrzutu nadal wynosi 50%;

    * Umiejętność 25. poziomu ^^„CZAS ZET – Penetrator”^^ (lewa) została zmieniona. Od teraz umożliwia przeładowywanie broni w czasie rzeczywistym i nie zapewnia żadnych premii do przebicia. Umiejętność otrzymała nową nazwę: [^^„CZAS ZET – Sprawne dłonie”^^](){ #support-sleightofhand };

    * Umiejętność 25. poziomu [^^„CZAS ZET – Ogień zaporowy”^^](){ #support-barrage } (prawa) pozwala na strzelanie w czasie rzeczywistym. Wcześniej umożliwiała strzelanie jedynie z prędkością zbliżoną do czasu rzeczywistego;

    * Dodano [nową pasywną umiejętność](){ #armor-regen-passive }, która natychmiast regeneruje 5 punktów pancerza przy każdym odświeżeniu Czasu Zet oraz 2 punkty pancerza za każdą sekundę jego trwania. W praktyce pozwala to odzyskać łącznie 49 punktów pancerza podczas pełnego Czasu Zet trwającego 21 sekund. Pozostaje tylko pytanie, czy w drużynie znajdzie się Komandos zdolny skutecznie go przedłużać?
    !!! note "Uwaga"

        Na serwerach HoE+/Precision Wsparcie pełni również funkcję mobilnej handlarki. Dzięki temu możliwe jest uzupełnianie amunicji, pancerza i granatów, a także ulepszanie posiadanej broni. Nie ma jednak możliwości zakupu nowego uzbrojenia. Z funkcji handlarki może korzystać również sam gracz Wsparcia.


        <figure markdown="span">
          ![Trader Captions](http://eyesdeep.blue/images/docs/trader_captions.png){ width="920" }
        </figure>

??? info "Zmiany broni Wsparcia (HoE+)"

    * Przebicie amunicji śrutowej zostało ograniczone do `1`, cco oznacza, że pociski mogą przebić maksymalnie jednego zeta. Wyjątek stanowi Gwoździarka VLAD-1000, ponieważ przebicie jest jedną z jej charakterystycznych cech, a jego usunięcie pozbawiłoby tę broń części jej unikalności;

    - Wstrząsacz S12 na serwerach HoE+/Precision został zastąpiony przez Sajgę 12, a dokładniej jej wersję pozbawioną modułu amunicji uderzeniowej. W jego miejsce dodano amunicję kulową:

        * Pozostałe parametry amunicji śrutowej w tej broni pozostały bez zmian;

        * Nowy tryb amunicji kulowej umożliwia korzystanie z nabojów 12-tego kalibru, które zadają wysokie obrażenia i cechują się dużą siłą ogłuszającą. Ich główną wadą pozostaje słaba balistyka;

        * Koszt zakupu broni wynosi 2000 szekli, a więc tyle samo co Wstrząsacza na HoE+. W porównaniu ze standardowymi serwerami (Vanilla) jest ona jednak droższa o 500 szekli. Na HoE+ możliwość ulepszenia jej do Tier 5 została usunięta;

        * Szybkostrzelność na HoE+ była wcześniej obniżona. Wraz z aktualizacją przywrócono jej standardową wartość. Zmieniono również odrzut, który przy korzystaniu z amunicji kulowej jest znacznie większy niż przy amunicji śrutowej.


        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_S12_Slug_Demo_001.mp4" type="video/mp4">
        </video>

    * AA-12 oraz strzelba bojowa M4 otrzymały możliwość korzystania z amunicji kulowej działającej analogicznie do tej dostępnej w Sajdze 12;
        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_Slugs_Demo_001.mp4" type="video/mp4">
        </video>

    * Domyślnym typem amunicji dla strzelby „Smoczy Oddech” stała się zwykła amunicja śrutowa, natomiast amunicja zapalająca została przeniesiona do alternatywnego trybu ognia. Ponadto pociski zapalające nie pozostawiają już ognia na ziemi, nie wywołują efektu paniki u zetów (ani – miejmy nadzieję – u graczy) oraz spowalniają przeciwników o 30%. Broń została również przemianowana na M1897 „Trench Gun”, zgodnie z nazwą jej rzeczywistego odpowiednika;
    
        <video autoplay loop muted playsinline>
        <source src="http://eyesdeep.blue/videos/KF2_TrenchGun_Demo_001.mp4" type="video/mp4">
        </video>

    - Dodano karabin specjalny KS-23, czyli trzelbę popmpową, którą w Rosji mianuje się jako "dusiciel zamieszek". W grze dostępna jest  jej bardziej bojowa wersja:

        * Tryb podstawowy – pocisk mogący rykoszetować od powierzchni. Przy rykoszecie obrażenia są zmniejszane o połowę; 

        * Tryb alternatywny – amunicja hukowa ogłuszająca zety w promieniu do 15 metrów. Działa na wszystkie typy przeciwników, nie zabija najmniejszych zetów, co pozwala zachować je dla Komandosa podczas Czasu Zet;

        * Pojemność magazynków wynosi 3+1 nabój, zapas amunicji -- 24 szt., waga bez ulepszenia to 5 jednostek. Cena 1100 szekli (Tier 3), możliwość ulepszenia do Tier 4 za 700 szekli;

        * Na pierwszy rzut oka może się wydawać, że zapas amunicji jest niewystarczający, jednak KS-23 została zaprojektowana jako broń wspierająca. Jej głównym atutem jest amunicja hukowa, której działanie przypomina granaty SWAT-a. Większa ilość tego typu amunicji mogłaby być zbyt silna w porównaniu z możliwościami pozostałych specjalizacji.

??? info "Pozostałe zmiany"

    * Naprawiono błąd uniemożliwiający przejście z trybu gracza do trybu obserwatora za pomocą komendy [`!sr`](commands.md#switch-role). Funkcja została przywrócona i ponownie umożliwia swobodne przełączanie się pomiędzy trybem widza i gracza bez konieczności opuszczania serwera;

    * Dodano komendę [`!zedtimeeffect`](commands.md#zed-time-effect) lub [`!zte`](commands.md#zed-time-effect), która pozwala wyłączyć wizualny efekt Czasu Zet w postaci szarego obrazu. Ustawienie jest zapisywane lokalnie, dzięki czemu nie trzeba ponownie wpisywać komendy przy każdym dołączeniu do serwera;

    * Dodano serwery #23 i #24, przeznaczone głównie dla mapy Simple Holdout oraz podobnych map. Ich konfiguracja została dostosowana do tego typu rozgrywki, a maksymalna liczba graczy została zwiększona do 12;

    * Dodano serwer #7.1, będący odpowiednikiem serwerów HoE+, z tą różnicą, że długość rozgrywki została ograniczona do `7 fal`;

    * Dodano nowe mapy zaproponowane przez społeczność. Własne propozycje można zgłaszać [tutaj](https://steamcommunity.com/groups/SPB-GS/discussions/0/3824159517132427343/);

    * Na prośbę niektórych gagatków dodano nieskończoną latarkę.

### Plany na przyszłość

Uważni gracze mogli zauważyć, że na ekranie wyboru specjalizacji, pod ikoną początkowej broni, pojawiły się strzałki umożliwiające jej zmianę. W jednej z przyszłych aktualizacji planujemy rozwinąć ten system i umożliwić wybór broni startowej. Jest to odpowiedź na potrzebę większego zróżnicowania pierwszej fali, która obecnie bywa dość monotonna.

Ponadto planowane jest rozszerzenie arsenału Komandosa oraz Strzelca Wyborowego, co powinno zwiększyć różnorodność popularnych buildów. Być może przyjdzie również czas na zbalansowanie i modyfikację FAMAS-a. Pewne jest natomiast, że na serwery Precision powróci zmodyfikowana M16.

O dalszych planach trudno jeszcze mówić szczegółowo. Celem projektu nie jest zmiana Killing Floor 2 jako takiej, lecz raczej poprawienie jej słabszych elementów. Być może w przyszłości przyjdzie czas na modyfikacje fali bossa oraz przebudowę Medyka, jednak są to na razie bardzo odległe plany.