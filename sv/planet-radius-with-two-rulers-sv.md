---
title: "Att mäta en planets radie med två linjaler"
subtitle: "En exakt metod utifrån horisontens krökning"
author: "Hob Nilre & Bo C. Herlin"
date: "2026-10-08"
lang: sv
abstract: |
  Den öppna experimentella frågan är om två fast monterade linjaler kan
  bestämma en planets radie med kvantifierade osäkerheter i avläsning,
  inriktning och atmosfärens påverkan. Här härleds en exakt invers för en
  sfärisk yta och räta ljusstrålar; de fyra uppmätta längderna räcker inte
  ensamma för att skilja den geometriska radien från atmosfärens förskjutning
  av horisonten. Storheterna är ögats höjd $h$ över den sfäriska ytan, det
  vinkelräta avståndet $D$ från ögat till linjalplanet, avståndet $L$ mellan
  de två punkter där horisonten skär en horisontell linjal och horisontens
  höjdskillnad $s$ över denna linjal vid skärningspunkternas mittpunkt,
  avläst med en andra, vertikal linjal. Den projicerade geometriska
  horisonten är en gren av en hyperbel. Höjdskillnaden vid mittpunkten
  bestämmer $T=\tan\delta$, där $\delta$ är den geometriska horisontens
  sänkningsvinkel, och därmed $R=h(\sqrt{1+T^{2}}+1)/T^{2}$.
  Härledningen använder exakta identiteter och algebraiskt ekvivalenta,
  numeriskt stabila omskrivningar, utan småvinkelutveckling eller ersättning
  med en cirkelbåge. Exakta känsligheter, ändliga mätosäkerhetsgränser och
  ett förfarande för att undersöka avvikelser med bibehållna tecken anger
  vad som behöver prövas. Räkneexemplet är syntetiskt; inga fältobservationer
  eller uppnådda instrumentosäkerheter redovisas.
keywords:
  - horisontsänkning
  - horisontens krökning
  - planetradie
  - sfärisk geometri
  - fysikundervisning
---

\begingroup\scriptsize\noindent PDF created: \pdfbuildtimestamp\par\noindent Latest on GitHub: \url{https://github.com/hobnilre/physics-sphere}\par\noindent Svensk översättning av \href{https://github.com/hobnilre/physics-sphere/blob/main/planet-radius-with-two-rulers.md}{den engelska originalartikeln}.\par\endgroup

# Inledning

Den öppna frågan är om en fast uppställning med två linjaler kan ge en
konsistent bestämning av en planets radie med uppmätt osäkerhet. Tre frågor
kvarstår: vilken precision uppställningen uppnår, hur atmosfärens
förskjutning av horisonten kan skiljas från den geometriska horisonten och
om avvikelser med bestämda tecken kvarstår efter oberoende kontroller.
Artikeln ger en exakt geometrisk invers och ett förfarande för att
undersöka dessa frågor. Räkneexemplet är syntetiskt; instrumentvalidering
och fältmätningar återstår.

För räta ljusstrålar ligger en sfärisk planets horisont under observatörens
lokala horisontalplan, och dess bild på ett plan framför ögat är krökt.
Både sänkningen och krökningen beror på planetens radie och observatörens
höjd. Inom denna modell bestämmer de fyra längder som definieras nedan
radien. Horisontsänkningen är ett klassiskt begrepp inom astronomisk
navigation; [Young (u.å.)][young] går igenom fallen med och utan refraktion.
Krökningen är svårare att se än sänkningen, eftersom horisontens avvikelse
från en rät linje vid vanliga höjder är mycket mindre än bredden hos ett
normalt synfält. Därför kräver fotografiska undersökningar av krökningen
omsorg, vilket [Lynch (2008)][lynch] diskuterar.

Här behandlas det inversa problemet med enklast möjliga mätuppställning.
Två vanliga linjaler, fixerade i ett vertikalt plan framför ett enda öga,
ger de nödvändiga geometriska mätvärdena, förutsatt att observatören också
känner ögats höjd över den sfäriska ytan och avståndet från ögat till
linjalplanet. En horisontell linjal placeras så att den synliga horisonten
skär den nära dess båda ändar; en vertikal linjal vid skärningspunkternas
mittpunkt mäter hur mycket horisonten höjer sig över den horisontella
linjalen. Då finns fyra längder, och radien följer i sluten form under de
angivna antagandena. För en horisont som påverkas av atmosfären ger samma
beräkning en radie enligt modellen med räta strålar; en oberoende
begränsning av atmosfärens påverkan behövs för att identifiera den med den
fysiska radien.

Att bestämma en radie från horisonten är en gammal idé. På 1000-talet mätte
al-Bīrūnī horisontsänkningen från en kulle med känd höjd vid Nandana i
nuvarande Pakistan och använde den för att bestämma jordens radie.
[Sparavigna (2013)][sparavigna] anger en avvikelse på ungefär två procent
från en referensradie för krökningen, med en specificerad omräkning av den
historiska längdenheten. Inversen från horisontsänkning till radie ges i
ekvation \eqref{eq:Rcos} nedan. Direkt mätning av sänkningen blev därefter
ett instrumentproblem för navigatörer, som byggde särskilda
horisontsänkningsmätare och horisontmätare. Vid onormal refraktion fann de
att den observerade sänkningen kunde avvika från tabellvärden med tio
bågminuter eller mer [(Moll 1931)][moll]. Den här metoden når samma
sänkningsvinkel genom två linjalavläsningar i stället för ett
vinkelmätningsinstrument.

Mätningar av horisontens krökning har redovisats senare.
[Lynch (2008)][lynch] bestämde motsvarande förskjutning från tre
horisontpunkter i ett fotografi; [Kinlen (2017)][kinlen] härledde
horisontens projektion på ett vertikalt bildplan;
[Howe (2019)][howe] beskrev en närbesläktad jämförelse mellan horisonten
och en rät kant i ett fotografi; [Cyrulies (2025)][cyrulies] byggde ett
särskilt instrument med vridbart sikte, riktmedel och kamera; och
[Bislin (u.å.)][bislin] modellerar en närbesläktad vinkelbåge och anger en
motsvarande båglängd, med justerbar refraktion. Ännu tidigare provade
[Lichtenstein och Suit (1967)][nasa] kalibrerade horisontmallar för det
omvända problemet: att uppskatta höjden över en kropp med känd radie.
Avsnitt 8 jämför dessa arbeten med uppställningen som används här.

Exakthet är genomgående central. Inget steg använder $\sin x\approx x$,
$\tan x\approx x$, $\cos x\approx 1-x^{2}/2$, en cirkelbåge i stället för
den verkliga projicerade kurvan eller någon approximation motiverad av
planetens storlek eller den uppmätta höjdskillnadens litenhet. Algebraiskt
ekvivalenta omskrivningar för numerisk stabilitet anges uttryckligen som
sådana. Avsnitt 2 definierar de fyra mätstorheterna och uppställningen,
avsnitt 3 härleder den exakta geometrin, avsnitt 4 löser ut radien,
avsnitt 5 ger en checklista för mätningen, avsnitt 6 genomför ett
räkneexempel och avsnitt 7 och 8 behandlar noggrannhet och tidigare arbeten.

# Mätningen

## Mätstorheter

Metoden kräver fyra uppmätta längder:

$h$

:   observatörens ögonhöjd över den lokala sfäriska ytan;

$D$

:   vinkelrätt avstånd från ögat till linjalplanet;

$L$

:   horisontellt avstånd mellan de två punkter där horisonten skär den
    horisontella linjalen;

$s$

:   vertikalt avstånd från den horisontella linjalen till horisonten vid
    skärningspunkternas mittpunkt.

Höjden $h$ måste mätas över samma sfäriska yta som bildar horisonten.
För en havshorisont sedd från en kulle omfattar den därför både kullens
höjd över havet och ögats höjd över marken. Alla fyra längder måste
uttryckas i samma enhet.

Genomgående antas $R>0$, $h>0$, $D>0$ och $L>0$. Uppställningen nedan ger
då $s>0$, vilket bekräftas i avsnitt 3.3.

Avståndet $D$ är nödvändigt. Utan det beskriver $L$ och $s$ bara en form
på linjalen, inte formens vinkelstorlek sedd från ögat. Olika avstånd
mellan öga och linjal kan ge samma $L$ och $s$ men motsvara olika
planetradier.

## Mätuppställning

Montera den horisontella linjalen i ett vertikalt plan framför ögat,
vinkelrätt mot den centrala horisontella siktlinjen. Placera linjalen så
att den synliga horisonten skär den nära dess vänstra och högra kant.
Använd ett enda fixerat öga och placera båda linjalerna i samma vertikala
plan. Den vertikala linjalen måste ligga vid mittpunkten mellan
horisontens båda skärningspunkter, rakt framför ögat i sidled. Mät $D$
horisontellt och vinkelrätt mot detta plan, inte längs den nedåtriktade
siktlinjen mot horisonten.

Använd den vertikala linjalen vid den horisontella linjalens mitt för att
mäta avståndet från den horisontella linjalen till den synliga horisonten.
Med koordinatkonventionen i avsnitt 3.1 är $s$ positiv när horisonten vid
mittpunkten ligger ovanför den horisontella linjalen. Detta är den
förväntade situationen när den horisontella linjalen går genom två
symmetriska horisontpunkter. Uppställningen visas i figur 1.

[Howe (2019)][howe] beskriver en närbesläktad linjaljämförelse i ett
fotografi. Här avläses höjdskillnaden vid mittpunkten direkt med den andra
linjalen, i samma plan och vid samma tidpunkt som skärningspunkterna.

Använd ett styvt stöd för linjalerna och ett huvudstöd eller siktstopp
så att det enda ögats observationspunkt kan upprepas. Mät $D$ från den
punkten och anteckna osäkerheten i dess placering. Kontrollera den
horisontella linjalen med vattenpass och linjalplanet samt den vertikala
skalan mot en lodreferens, oberoende av horisonten. Den övre mätkanten och
den vertikala skalans referensmarkeringar måste ligga i samma plan:
att bara lägga en linjal ovanpå den andra behöver inte uppfylla detta
villkor. Anteckna rakhet, böjning och varje avvikelse från planet.

Horisonten vid mittpunkten måste förbli synlig vid den vertikala skalan.
En genomskinlig skala eller en tunn referensmarkering kan möjliggöra
avläsningen, men dess optiska förskjutning, tjocklek och
interpolationsfel måste kalibreras. En avläsning vid sidan av mittpunkten
är inte $s$ i härledningen. Anteckna skalstreckens avstånd, interpolation,
spridning vid upprepade avläsningar och kalibreringsosäkerhet var för sig;
en fin tryckt skala fastställer inte ensam osäkerheten i en
horisontavläsning. Avsnitt 7 beskriver den föreslagna instrumentvalideringen.

Härledningen förutsätter att den synliga horisonten är en sfärisk planets
geometriska horisont. Kullar, vågor, byggnader, dis och atmosfärisk
refraktion behöver undersökas när metoden används på en observerad horisont.

![Mätuppställning. Till vänster: ögats höjd $h$ och det vinkelräta
avståndet $D$ från ögat till linjalplanet. Till höger: vyn från ögat,
med avståndet $L$ mellan skärningspunkterna och höjdskillnaden $s$ vid
mittpunkten, mätt från den horisontella linjalens överkant. Bilden är
schematisk; krökning och avstånd är överdrivna.](figures/measurement-setup.png){width=100%}

\FloatBarrier

# Horisontens exakta geometri

## Koordinater och konventioner

Placera observatörens öga i origo $O=(0,0,0)$ i ett kartesiskt
koordinatsystem, där $x$ är den horisontella riktningen i sidled längs
linjalen, $y$ den horisontella riktningen framåt från ögat mot
linjalplanet och $z$ den vertikala riktningen uppåt. Planetens centrum
ligger då rakt under ögat i

$$
C = (0,0,-(R+h)),
$$

där $R$ är planetens okända radie, och linjalplanet är planet $y=D$.
Skriv $a=L/2$ för halva avståndet mellan skärningspunkterna.

I detta system ligger de två uppmätta horisontskärningarna i
$(\pm a, D, z_{e})$ och horisontpunkten rakt framför ögat i
$(0,D,z_{0})$. Båda höjderna är negativa eftersom den synliga horisonten
ligger under ögats nivå, medan den uppmätta höjdskillnaden vid mittpunkten

\begin{equation}\label{eq:sdef}
s = z_{0} - z_{e}
\end{equation}

är positiv. Definitionen bestämmer den registrerade avläsningens tecken
även när den observerade horisonten avviker från den antagna modellen.

## Den geometriska horisontens sänkningsvinkel

En stråle från ögat i enhetsriktningen $\mathbf{u}$, med
$|\mathbf{u}|=1$, når den geometriska horisonten när linjen som den
definierar tangerar planeten, alltså när det vinkelräta avståndet från
planetens centrum $C$ till linjen är $R$. Avståndet är
$\sqrt{|C|^{2}-(C\cdot\mathbf{u})^{2}}$, så tangeringsvillkoret är

$$
|C|^{2} - (C\cdot\mathbf{u})^{2} = R^{2}.
$$

Eftersom $|C| = R+h$ och $C\cdot\mathbf{u} = -(R+h)u_{z}$ blir detta
$(R+h)^{2}\bigl(1-u_{z}^{2}\bigr) = R^{2}$. Division med $(R+h)^{2}$ ger

$$
1-u_{z}^{2} = \left(\frac{R}{R+h}\right)^{2}.
$$

För den synliga horisonten, som ligger under ögats nivå, är $u_{z}$
negativ. Därför är

$$
u_{z} = -\sqrt{1-\left(\frac{R}{R+h}\right)^{2}}.
$$

För denna rot är $C\cdot\mathbf{u} = -(R+h)u_{z} > 0$, så
tangeringspunkten ligger på den framåtriktade strålen från ögat och inte
på dess förlängning bakåt.

Definiera horisontens exakta sänkningsvinkel $\delta$ under det lokala
horisontalplanet, med $0<\delta<\pi/2$, genom $u_{z}=-\sin\delta$.
Då är $\sin\delta = \sqrt{1-\bigl(R/(R+h)\bigr)^{2}}$, och alltså

\begin{equation}\label{eq:dip}
\cos\delta = \frac{R}{R+h}.
\end{equation}

Ekvation \eqref{eq:dip} är exakt för en sfärisk planet med räta
ljusstrålar. Det är standardrelationen för horisontsänkning utan
refraktion, som [Young (u.å.)][young] anger i samma form.

## Projektion på linjalplanet

En punkt $(x,D,z)$ i linjalplanet ses från ögat längs vektorn
$\mathbf{v}=(x,D,z)$, vars enhetsriktning
$\mathbf{u} = (x,D,z)/\sqrt{x^{2}+D^{2}+z^{2}}$ har den vertikala
komponenten $u_{z} = z/\sqrt{x^{2}+D^{2}+z^{2}}$. Punkten ligger på den
projicerade horisonten precis när denna komponent är $-\sin\delta$:

\begin{equation}\label{eq:proj}
\frac{z}{\sqrt{x^{2}+D^{2}+z^{2}}} = -\sin\delta.
\end{equation}

Kvadrering av \eqref{eq:proj} ger
$z^{2} = \sin^{2}\delta\,(x^{2}+D^{2}+z^{2})$, det vill säga
$z^{2}\bigl(1-\sin^{2}\delta\bigr) = \sin^{2}\delta\,(x^{2}+D^{2})$.
Den exakta identiteten $1-\sin^{2}\delta = \cos^{2}\delta$ och division
med $\cos^{2}\delta>0$ ger
$z^{2} = \tan^{2}\delta\,(x^{2}+D^{2})$. Den synliga horisonten ligger
under den lokala horisontella riktningen, så $z<0$ och

\begin{equation}\label{eq:curve}
z(x) = -\tan\delta\,\sqrt{x^{2}+D^{2}}.
\end{equation}

Den positiva rot som här förkastas är horisontens spegelbild ovanför
ögats nivå. Den uppfyller inte \eqref{eq:proj} och utesluts av tecknet på
$u_{z}$. Ekvation \eqref{eq:curve} är den nedre grenen av hyperbeln
$z^{2}-x^{2}\tan^{2}\delta = D^{2}\tan^{2}\delta$ och utgör den exakta
projicerade horisontkurvan i det vertikala linjalplanet. Den ersätts inte
här med en cirkelbåge. [Kinlen (2017)][kinlen] härleder motsvarande
projektion för ett vertikalt bildplan; hans betraktningsavstånd $\nu$
motsvarar $D$ och hans höjdskillnad $\epsilon$ vid mittpunkten motsvarar
$s$. De två linjalerna ger en fysisk mätning i detta plan.

Vid mittpunkten $x=0$ ger \eqref{eq:curve} $z_{0} = -D\tan\delta$,
och vid vardera skärningen $x=\pm a$ ger den
$z_{e} = -\tan\delta\,\sqrt{a^{2}+D^{2}}$. Insättning av båda i
\eqref{eq:sdef} och utbrytning av $\tan\delta$ ger

\begin{equation}\label{eq:sag}
s = \tan\delta\,\Bigl(\sqrt{a^{2}+D^{2}}-D\Bigr).
\end{equation}

Eftersom $\sqrt{a^{2}+D^{2}}>D$ för $a>0$ bekräftar ekvation
\eqref{eq:sag} att $s>0$ under de angivna antagandena.
[Lynch (2008, avsnitt 3 och figur 5)][lynch] mäter motsvarande
förskjutning från tre horisontpunkter i ett fotografi; den modell med en
cirkelbåges pilhöjd som han senare inför är inte den exakta
hyperboliska projektion som härleds här.

Linjalerna mäter horisontens projicerade form, inte en kurva på planetens
yta. Höjdskillnaden och observationsgeometrin ger den sänkningsvinkel
som används för att beräkna radien.

# Att lösa ut planetens radie

## Sänkningsvinkeln från linjalavläsningarna

Om tangenten till sänkningsvinkeln löses ut ur \eqref{eq:sag} och
$a=L/2$ används fås

\begin{equation}\label{eq:tandelta}
\tan\delta = \frac{s}{\sqrt{a^{2}+D^{2}}-D}
           = \frac{s}{\sqrt{D^{2}+(L/2)^{2}}-D}.
\end{equation}

För numerisk beräkning kan nämnaren i \eqref{eq:tandelta}
rationaliseras exakt. Eftersom

$$
\Bigl(\sqrt{D^{2}+a^{2}}-D\Bigr)\Bigl(\sqrt{D^{2}+a^{2}}+D\Bigr)
= \bigl(D^{2}+a^{2}\bigr)-D^{2} = a^{2},
$$

ger multiplikation av täljare och nämnare med $\sqrt{D^{2}+a^{2}}+D$
storheten

\begin{equation}\label{eq:T}
T \equiv \tan\delta
  = \frac{s\bigl(\sqrt{D^{2}+a^{2}}+D\bigr)}{a^{2}}
  = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}}.
\end{equation}

Ekvation \eqref{eq:T} undviker subtraktion av två nästan lika tal när
$L$ är litet i förhållande till $D$, vilket vanligen är fallet.
Den är algebraiskt identisk med \eqref{eq:tandelta} och är ingen
approximation.

## Radien

Relationen \eqref{eq:dip} kan inverteras direkt. Utveckling av
$\cos\delta\,(R+h)=R$ ger $R\cos\delta + h\cos\delta = R$, alltså
$h\cos\delta = R\,(1-\cos\delta)$. Division med $1-\cos\delta$ ger

\begin{equation}\label{eq:Rcos}
R = \frac{h\cos\delta}{1-\cos\delta}.
\end{equation}

Ekvation \eqref{eq:Rcos} är al-Bīrūnīs resultat: den omvandlar en
sänkningsvinkel observerad från känd höjd till planetens radie. Allt
som föregår den i artikeln tjänar till att bestämma $\delta$ från två
linjalavläsningar.

Eftersom $0<\delta<\pi/2$ är cosinus positiv och den exakta identiteten
$\cos\delta = 1/\sqrt{1+\tan^{2}\delta}$ gäller. Därmed är
$\cos\delta = 1/\sqrt{1+T^{2}}$, med $T$ från \eqref{eq:T}.
Insättning i \eqref{eq:Rcos} och multiplikation av täljare och nämnare
med $\sqrt{1+T^{2}}$ ger

\begin{equation}\label{eq:Rminus}
R = \frac{h/\sqrt{1+T^{2}}}{1-1/\sqrt{1+T^{2}}}
  = \frac{h}{\sqrt{1+T^{2}}-1}.
\end{equation}

Rationalisering av \eqref{eq:Rminus} på samma sätt som tidigare ger
den form som bör användas i praktiken,

\begin{equation}\label{eq:R}
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}},
\end{equation}

vilken undviker subtraktion av två nästan lika tal när $T$ är litet.
Liksom \eqref{eq:T} är detta en exakt omskrivning och ingen approximation.

## Resultat

Om $h$, $D$, $L$ och $s$ mäts i samma enhet ger kombinationen av
\eqref{eq:T} och \eqref{eq:R} planetens radie som

$$
\boxed{\;
T = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}},
\qquad
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}}.
\;}
$$

Två degenererade fall begränsar metodens tillämplighet. Vid $h=0$
ger den geometriska horisonten $s=0$ för varje radie, så ingen
observation med ögat på ytan kan bestämma $R$. För $h>0$ ligger ett
uppmätt $s\le 0$ utanför definitionsmängden för inversen med positiv
radie. Ett sådant värde får inte sättas in i \eqref{eq:R}, där
kvadreringen av $T$ skulle dölja dess tecken. Bevara dessa avläsningar,
deras osäkerheter och observationsförhållanden för avvikelseanalysen
i avsnitt 7. En positiv avläsning vars tillåtna intervall når $s=0$
ger ingen ändlig övre gräns för radien från enbart dessa mätningar.

De fyra längderna bestämmer radien endast inom den angivna modellen
med en sfärisk yta och räta strålar. Atmosfärens förskjutning av
horisonten och mätfelen behöver fortfarande bedömas oberoende.

# Förfarande

1. Bestäm en önskad osäkerhet för den beräknade radien och kalibrera
   uppställningen enligt avsnitt 7. Mät ögats höjd $h$ över den sfäriska
   yta som bildar horisonten, inklusive osäkerheten.
2. Fixera det observerande ögat och båda linjalerna. Kontrollera att
   deras mätreferenser ligger i samma vertikala plan och mät det
   horisontella, vinkelräta avståndet $D$ från observationspunkten till planet.
3. Kontrollera linjalens horisontella läge och planets vertikala riktning
   oberoende av horisonten; anteckna osäkerheten i inriktning och placering.
4. Rikta in den horisontella linjalen så att den synliga horisonten skär
   den i två symmetriska punkter nära kanterna, med mittpunkten rakt
   framför ögat i sidled.
5. Mät avståndet $L$ mellan skärningspunkterna och bevara deras positioner
   och osäkerheter.
6. Mät vid mittpunkten den vertikala höjdskillnaden $s$ med tecken från
   den horisontella linjalens mätkant till horisonten. Anteckna osäkerhet,
   tidpunkt och horisontförhållanden, även för nollvärden och negativa avläsningar.
7. För positiva $h,D,L,s$, beräkna
   $T = 4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)/L^{2}$ och
   $R = h\bigl(\sqrt{1+T^{2}}+1\bigr)/T^{2}$. Beräkna ändliga
   osäkerhetsgränser enligt avsnitt 7; bevara data utanför definitionsmängden
   utan att tilldela dem någon radie.
8. Upprepa vid dokumenterade linjalinställningar under jämförbara
   förhållanden. Redovisa residualerna med tecken, begränsningarna av
   atmosfärens påverkan, genomförda kontroller och varje avvikelse som
   förblir oförklarad.

# Räkneexempel

Talen i detta avsnitt är syntetiska. Höjdskillnaden $s$ beräknades ur
framåtrelationen \eqref{eq:sag} för den antagna radien $R=6371.0$ km,
jordens medelradie. Det oavrundade värdet är
$1.774674087576960\ldots$ mm; det avrundades till närmaste $0.001$ mm
för att efterlikna en linjalavläsning. Denna numeriska avrundning
fastställer ingen avläsningsförmåga. Exemplet kontrollerar inversen och
visar dess känslighet; det redovisar ingen observation och innehåller
enligt konstruktionen varken refraktion, våg- eller terrängorsakad
förskjutning av horisonten eller inriktningsfel.

Betrakta en hypotetisk observatör på en kustnära topp med utsikt över
havshorisonten, en meterlinjal fixerad på avståndet $D=0.6000$ m och
en andra linjal vid dess mittpunkt:

| Storhet                              | Symbol | Värde                                      |
|:-------------------------------------|:-------|:-------------------------------------------|
| Ögats höjd över havsytan              | $h$    | $2000.0$ m                                 |
| Avstånd från öga till linjalplan      | $D$    | $0.6000$ m                                 |
| Avstånd mellan horisontskärningarna   | $L$    | $0.6000$ m                                 |
| Höjdskillnad vid mittpunkten          | $s$    | $1.775$ mm $= 1.775\times10^{-3}$ m          |

Alla fyra värden uttrycks i meter i denna beräkning.
Först beräknas parentesen i \eqref{eq:T}:

$$
\sqrt{D^{2}+(L/2)^{2}} = 0.6708204\ \text{m},
\qquad
\sqrt{D^{2}+(L/2)^{2}}+D = 1.2708204\ \text{m},
\qquad
L^{2} = 0.360000\ \text{m}^{2},
$$

vilket ger

$$
T = \frac{4\,(1.775\times10^{-3})\,(1.2708204)}{0.360000}
  = 2.506340\times10^{-2},
$$

Detta motsvarar sänkningsvinkeln $\delta=\arctan T=1.4357^{\circ}$.
Då är $T^{2}=6.281741\times10^{-4}$ och $\sqrt{1+T^{2}}=1.0003140$,
så \eqref{eq:R} ger

$$
R = \frac{2000.0\,(2.0003140)}{6.281741\times10^{-4}}
  = 6.368661\times10^{6}\ \text{m}
  = 6368.7\ \text{km}.
$$

Detta är $0.037\%$ under den antagna radien $6371.0$ km, och hela
avvikelsen kommer från avrundningen av $s$ till närmaste $0.001$ mm.
Exemplet visar också varför \eqref{eq:T} och \eqref{eq:R} är att
föredra framför deras orationaliserade motsvarigheter: här är
$\sqrt{1+T^{2}}-1 = 3.1404\times10^{-4}$, så nämnaren i
\eqref{eq:Rminus} är skillnaden mellan två tal som överensstämmer till
tre decimaler. Överensstämmelsen ökar när $T$ minskar.

Resultatets känslighet för linjalavläsningen kan anges exakt.
Derivera \eqref{eq:Rminus}, använd $R=h/(\sqrt{1+T^{2}}-1)$ för att
eliminera $h$ och förkorta sedan med
$T^2=(\sqrt{1+T^2}-1)(\sqrt{1+T^2}+1)$. Då fås

\begin{equation}\label{eq:sens}
\frac{\partial \ln R}{\partial \ln T}
= -\left(1+\frac{1}{\sqrt{1+T^{2}}}\right).
\end{equation}

Denna algebraiskt ekvivalenta form undviker subtraktion av nästan lika
tal; ingen approximation används. Eftersom $T$ är exakt proportionell
mot $s$ vid fasta $D$ och $L$ har $\partial \ln R/\partial \ln s$
samma värde. Vid exemplets $T$ är \eqref{eq:sens} lika med $-1.99969$.
Att \eqref{eq:sens} går mot $-2$ när $T\to0$ är ett gränsvärde,
inte en approximation. Den praktiska betydelsen syns tydligast genom
att beräkna radien exakt från närliggande avläsningar. Anta som
illustration att den uppnådda avläsningsosäkerheten är $\pm0.05$ mm,
eller här $2.8\%$ av $s$, med övriga indata fixerade. Denna antagna
förmåga har inte visats för uppställningen. Ändpunkterna ger

$$
s = 1.725\ \text{mm} \;\Rightarrow\; R = 6743\ \text{km},
\qquad
s = 1.825\ \text{mm} \;\Rightarrow\; R = 6025\ \text{km},
$$

en förändring på $+5.8802\%$ respektive $-5.4035\%$ i förhållande till
den centralt beräknade radien, alltså ungefär $\pm6\%$.
Procenttalen använder oavrundade ändpunktsradier; en experimentrapport
bör behålla de asymmetriska gränserna. Höjden påverkar resultatet
proportionellt, eftersom $\partial \ln R/\partial \ln h = 1$ exakt.
Vid fasta $D$ och $\delta$ växer $s$ med det faktiska avståndet $L$
mellan skärningspunkterna. Ett större $L$ minskar den relativa
avläsningsosäkerheten om den absoluta osäkerheten i $s$ hålls konstant;
övriga bidrag måste fortfarande bedömas. Detta motiverar valet $L=D$
i exemplet.

En liten ändring i den mycket lilla höjdskillnaden kan ge en större
relativ ändring i den beräknade radien. Exemplet visar denna känslighet;
det mäter inte instrumentets faktiska avläsningsnoggrannhet.

# Noggrannhet och systematiska effekter

## Instrumentvalidering återstår

Uppställningens faktiska osäkerheter i avläsning och inriktning har inte
mätts. Exakt beräkning med \eqref{eq:sag}, $R=6371.0$ km och
$D=L=0.6000$ m ger följande syntetiska signaler:

| Ögats höjd $h$ | Förutsagd höjdskillnad $s$ |
|:---------------|---------------------------:|
| $1.7$ m        | $0.0517361$ mm              |
| $10$ m         | $0.125479$ mm               |
| $100$ m        | $0.396800$ mm               |
| $2000$ m       | $1.7746741$ mm              |

Vid $h=1.7$ m är den förutsagda signalen jämförbar med den illustrativa
avläsningsosäkerheten $0.05$ mm i avsnitt 6. Det användbara
höjdområdet måste därför fastställas utifrån uppnådd osäkerhet och
effekterna av linjalernas böjning, ögats rörelse, nivellering,
skalplacering och horisontens synlighet.

En föreslagen första kontroll använder en sfär vars radie har mätts
oberoende, med samma definitioner av $h,D,L,s$ och samma exakta
framåtrelation. Välj ett önskat radieintervall, mät uppställningens
kalibrering och repeterbarhet och variera $D$ samt det faktiska
avståndet $L$ mellan skärningspunkterna inom det avsedda
användningsområdet. Dokumentera intervall, steglängder, upprepningar,
gränsfall och oprövade inställningar. Överensstämmelse i denna
kontrollerade prövning skulle validera uppställningen endast under
de prövade förhållandena. Atmosfärens påverkan på en planethorisont
skulle fortfarande vara olöst. Ingen sådan validering redovisas här.

## Exakta känsligheter och ändliga gränser

Alla fyra uppmätta längder bidrar till resultatet. Skriv
$q=\sqrt{D^2+(L/2)^2}$ och $\gamma=1+1/\sqrt{1+T^2}$.
Derivering av \eqref{eq:T} tillsammans med \eqref{eq:sens} ger de
exakta lokala känsligheterna

\begin{equation}\label{eq:all-sens}
\begin{aligned}
\frac{\partial\ln R}{\partial\ln h}&=1,
&\frac{\partial\ln R}{\partial\ln s}&=-\gamma,\\
\frac{\partial\ln R}{\partial\ln D}&=-\gamma\frac{D}{q},
&\frac{\partial\ln R}{\partial\ln L}&=\gamma\left(1+\frac{D}{q}\right).
\end{aligned}
\end{equation}

Logaritmisk derivering av $T=4s(q+D)/L^2$ ger exempelvis
$\partial\ln T/\partial\ln D=D/q$ och
$\partial\ln T/\partial\ln L=-1-D/q$; multiplikation med
$\partial\ln R/\partial\ln T=-\gamma$ ger den sista raden.
Vid den avrundade avläsningen i avsnitt 6 är koefficienterna för
$(h,D,L,s)$ lika med $(1,-1.78857,3.78826,-1.99969)$.
Derivatorna beskriver den lokala responsen; ändliga osäkerheter bör
beräknas med själva den exakta inversen.

Beteckna den sammansatta avbildningen \eqref{eq:T}--\eqref{eq:R}
med $F(h,D,L,s)$. För positiva rektangulära indataintervall, där
index $-$ och $+$ anger deras nedre respektive övre ändpunkter,
gäller tecknen i \eqref{eq:all-sens} i hela definitionsmängden.
De exakta extremvärdena är därför

\begin{equation}\label{eq:interval}
\begin{aligned}
R_{\min}&=F(h_-,D_+,L_-,s_+),\\
R_{\max}&=F(h_+,D_-,L_+,s_-).
\end{aligned}
\end{equation}

Korrelationer kan begränsa vilka kombinationer som är möjliga; den
omslutande intervallboxen ger då konservativa gränser. Särskilt $L$
och $s$ delar samma referenskant och mätningar av skärningspunkterna.
Bevara dessa beroenden när de är kända. Om det tillåtna positiva
$s$ närmar sig noll vid fasta positiva $h,D,L$ går den övre
radiegränsen mot oändligheten. Bevara även en eventuell negativ del
av det registrerade intervallet. Gränserna beskriver osäkerhet i
indata inom den angivna modellen; de begränsar inte i sig avvikelser
från modellen.

## Att skilja refraktion från radie är fortfarande olöst

En atmosfär kan ändra horisontens skenbara sänkningsvinkel, och
ändringen kan ha båda tecknen. Effekten beror på atmosfärens
tillstånd; en antagen refraktionskoefficient nära ytan fastställer
ingen korrektion för en viss observation [(Young, u.å.)][young].
Vilken effekt som dominerar uppställningens osäkerhet återstår att mäta.

För att se varför upprepade linjalinställningar inte avgör frågan,
låt $\delta_{\rm app}$ vara den skenbara sänkningsvinkeln.
Om ljuset går rakt mellan ögat och linjalerna och den skenbara
sänkningsvinkeln är konstant över de observerade azimutriktningarna,
ger projektionsargumentet i avsnitt 3

\begin{equation}\label{eq:apparent}
B_i=\frac{(L_i/2)^2}{\sqrt{D_i^2+(L_i/2)^2}+D_i},
\qquad
s_i=B_i\tan\delta_{\rm app}.
\end{equation}

Här betecknar $i$ en linjalinställning och $B_i$ är den
rationaliserade geometriska faktorn för höjdskillnaden. Vid fast
höjd och oförändrade atmosfäriska förhållanden uppskattar alla
kvoter $s_i/B_i$ samma skalär. Överensstämmelse prövar projektionen
och avläsningarnas konsistens men ger ingen oberoende uppdelning i
geometrisk sänkning och atmosfärisk förskjutning.

Definiera $\rho=\delta-\delta_{\rm app}$, positiv när atmosfären
höjer den skenbara horisonten. Insättning i den exakta inversen
för horisontsänkningen ger

\begin{equation}\label{eq:refraction-conditional}
R=\frac{h\cos(\delta_{\rm app}+\rho)}
        {1-\cos(\delta_{\rm app}+\rho)},
\qquad
0<\delta_{\rm app}+\rho<\pi/2.
\end{equation}

Denna identitet är villkorad av $\rho$; den bestämmer inte denna
storhet och ger ingen atmosfärsmodell. En oberoende begränsning av
$\rho$ behövs för att begränsa den fysiska radien. Beräkna uttrycket
med \eqref{eq:R} och $T=\tan(\delta_{\rm app}+\rho)$ för att
undvika kancellering.

Känsligheten kan illustreras utan att anta någon refraktionsmodell.
Utgå från den exakta geometriska sänkningsvinkeln för $R=6371.0$ km
och $h=2000$ m. Om den skenbara sänkningsvinkeln minskas med exakt
$10$ bågminuter ger modellen med räta strålar radien $8155.16$ km;
om den ökas med samma vinkel fås $5114.09$ km. Detta är syntetiska
vinkelstörningar, inte observationer eller gränser för atmosfärisk
osäkerhet. [Moll (1931)][moll] redovisar avvikelser från tabellerade
sänkningsvinklar på tio bågminuter och mer, men det fastställer inte
förskjutningen i det här föreslagna experimentet. Överensstämmelse
med en känd radie, även den historiska jämförelsen för al-Bīrūnī,
mäter inte refraktionen oberoende.

Upprepade linjalinställningar kan pröva om avläsningar och projektion
är inbördes förenliga medan de uppskattar samma skenbara
horisontvinkel. De skiljer inte ensamma planetens radie från
atmosfärens påverkan.

## Residualer med tecken och olösta resultat

För en sfär med oberoende känd radie $R_\star$ är den exakta
tangenten till den geometriska sänkningsvinkeln vid den registrerade
höjden $h_i$ lika med
$T_{\star,i}=\sqrt{h_i(2R_\star+h_i)}/R_\star$.
Med $B_i$ från \eqref{eq:apparent} definieras höjdskillnadens
residual med tecken som

\begin{equation}\label{eq:rise-residual}
r_{s,i}=s_i-B_iT_{\star,i}.
\end{equation}

En positiv residual innebär en större höjdskillnad än den förutsagda
och, för positiva avläsningar med övriga indata fixerade, en mindre
beräknad radie. När radien är okänd kan observationer vid samma höjd
i stället pröva om $T_i=s_i/B_i$ stämmer med ett gemensamt anpassat
$T$. Redovisa den anpassade parametern, dess osäkerhet och antalet
oberoende observationer. Att lösa ut en radie ur en enda avläsning
och sedan återskapa avläsningen med samma radie är ingen oberoende
prövning av modellen.

Bevara de ursprungliga avläsningarna med tecken, tidpunkter,
ögonposition, inriktningskontroller, horisontförhållanden och
beroenden mellan mätningarna. Redovisa residualer i längdenheter
och skillnader i beräknad radie med sina tecken. Undersök ändringar
med $D$, $L$, inriktning och observationsförhållanden, även
nollgenomgångar och intervall som når $s=0$. Dokumentera prövade
områden och upplösning, antal upprepningar och oprövade områden.
Kontrollera kalibrering, tecken, avrundning, numerisk precision och
fysikaliska antaganden innan en residual tillskrivs en orsak.
En föreslagen förklaring måste beskriva dess storlek, tecken och
förhållanden. Varje avvikelse som förblir olöst är ett öppet resultat
och hör hemma bland huvudresultaten tillsammans med de kontroller
som redan har utförts.

Inget arbete och ingen energiändring mäts eller beräknas i denna
artikel; ingen energibalans har utvärderats. Om ett experiment
redovisar en oväntad energiändring ska den anges bland de
huvudsakliga öppna resultaten. Definiera systemgränsen, varje
energiöverföringsport och ett uppmätt tidsintervall $[t_0,t_1]$.
Med varje porteffekt positiv in i systemet integreras portarna
var för sig:

\begin{equation}\label{eq:energy-audit}
W_k=\int_{t_0}^{t_1}P_k(t)\,dt,
\qquad
r_E=E(t_1)-E(t_0)-\sum_k W_k.
\end{equation}

Ta med omkopplingar, diskontinuiteter och impulser exakt en gång,
beräkna båda tillstånden för lagrad energi oberoende och
kvantifiera integrationsfel och modellresidualer. Anta inte
konstant lagrad energi för att uppställningen är statisk.
Redovisa ändringar i lagrad energi och varje oförklarad
balansresidual var för sig, med storlek, tecken, förhållanden och
genomförda kontroller. Ekvation \eqref{eq:energy-audit} anger ett
förfarande för ett sådant resultat; inga energidata ges här.

# Förhållande till tidigare arbeten

[Cyrulies (2025)][cyrulies] redovisar ett experiment om horisontens
krökning från känd höjd med vridbart sikte, riktmedel och kamera;
instrumentet och vinkelmätningarna skiljer sig från de fasta
linjalerna här. Tidigare prövade [Lichtenstein och Suit (1967)][nasa]
kalibrerade horisontmallar för att uppskatta höjden över en kropp
med känd radie, det närbesläktade omvända problemet.
Ett informellt förslag av [skrutnizer (2022)][ruler-comment]
går också ut på att uppskatta radien från höjden och horisontens
vinkelbåge över en linjal. Det belägger att idén har diskuterats
tidigare, men är ingen källa till ekvationerna ovan.

Metoden hör också till den äldre traditionen av
horisontsänkningsmätningar. Al-Bīrūnīs invers \eqref{eq:Rcos}
är oförändrad här; skillnaden är hur $\delta$ bestäms.
Navigatörers horisontsänkningsmätare avläser vinkeln direkt med
ett prisma och en sextantskala [(Moll 1931)][moll], medan de två
linjalerna bestämmer den från längder. Därmed behövs ingen
kalibrerad vinkelskala, men i gengäld krävs $D$.
[Bislin (u.å.)][bislin] beräknar en närbesläktad vinkelbåge och
motsvarande båglängd, med justerbar refraktion. Hans
[definition av den redovisade sänkningen][bislin-drop] är
$p=v\psi$, där $v$ är avståndet från ögat till horisonten och
$\psi$ är den vinkliga sänkningen; detta är inte direkt längden
$s$ i linjalplanet. Bågen är en konvention för att redovisa en
vinkel som en längd, inte ett belägg för att ersätta den
projicerade horisonten med en cirkel.

För motsvarande ändpunktsstrålar i det aktuella vertikala planet
är $\psi$ vinkeln mellan den centrala horisontstrålen och strålen
till mittpunkten på kordan mellan ändpunkterna. Mittpunkten har
koordinaterna $(0,D,z_e)$, så dess sänkningsvinkel är
$\arctan(-z_e/D)$. Den exakta omvandlingen, härledd här ur
\eqref{eq:curve}, är

\begin{equation}\label{eq:angular-bow}
\begin{aligned}
\psi&=\arctan\!\left(T\frac{\sqrt{D^2+a^2}}{D}\right)-\arctan T,\\
s&=D\bigl[\tan(\delta+\psi)-\tan\delta\bigr].
\end{aligned}
\end{equation}

Detta identifierar den närbesläktade mätstorheten utan att
likställa $p$ med $s$ eller $v$ med $D$. Bislins modell räknar
framåt från en antagen radie; den här metoden löser ut $R$ ur
de fyra uppmätta längderna under sina angivna antaganden.

Dessa föregångare belägger både mätprincipen och den projicerade
geometrin. Här presenteras en uttrycklig uppställning med två
linjaler tillsammans med en exakt invers uttryckt i $h$, $D$,
$L$ och $s$. En litteratursökning fann inte hela denna
kombination, men att en sökning inte hittar en uppställning
fastställer inte dess historiska originalitet.

# Slutsats

Instrumentets precision, möjligheten att skilja atmosfärens
förskjutning från den geometriska radien och undersökningen av
kvarstående avvikelser med tecken är de öppna experimentella
frågorna. Inga fältobservationer eller uppnådda
instrumentosäkerheter har fastställts här. Ett kontrollerat
experiment med en sfär kan pröva uppställningen; en observation
av en planet kräver även en oberoende begränsning av atmosfärens
påverkan. Upprepade linjalinställningar ger inte ensamma den
begränsningen.

För en sfärisk yta och räta strålar bestämmer de uppmätta
längderna $h,D,L,s$ radien $R$ exakt genom \eqref{eq:T} och
\eqref{eq:R}. Den projicerade horisonten är en hyperbel,
algebran kräver ingen småvinkelutveckling och det syntetiska
exemplet kontrollerar inversen. De ändliga gränserna och
förfarandet för residualer anger uttryckligen nästa
experimentella prövningar. Redovisa varje avvikelse som består
efter dessa kontroller som ett öppet resultat, med tecken,
storlek, förhållanden och återstående osäkerheter.

# Referenser {-}

\begingroup\small

1. Cyrulies, E. E. (2025). [The relationship between earth size and horizon
   curvature: its determination with a device built for a distance learning
   class][cyrulies]. *Revista Brasileira de Ensino de Física*, **47**.
   Publicerad 6 oktober 2025. doi:10.1590/1806-9126-RBEF-2025-0275.
   Artikel på spanska; engelsk titel angiven av tidskriften.
2. Bislin, W. (u.å.). [Finding the curvature of the Earth][bislin] och
   tillhörande Advanced Earth Curvature Calculator. *walter.bislins.ch*.
   Webbresurs, skapad 27 augusti 2019. Se även [Calculating left-right
   Horizon Drop][bislin-drop] (17 februari 2020), särskilt ekvation (10).
3. Howe, A. R. (2019, 22 december). [A Challenge to Flat Earthers][howe].
   *Science Meets Fiction*. Blogginlägg.
4. Kinlen, P. (2017, 27 november). [Photographing the horizon][kinlen].
   *A bit of maths*. Blogginlägg.
5. Lichtenstein, J. H., och Suit, W. T. (1967). [An experimental investigation
   of two visual methods of altitude determination][nasa]. NASA TM X-1392,
   Langley Research Center.
6. Lynch, D. K. (2008). [Visually discerning the curvature of the
   Earth][lynch]. *Applied Optics*, **47**(34), H39--H43.
   doi:10.1364/AO.47.000H39.
7. Moll, E. (1931). [Measurement of the dip of the horizon][moll].
   *The International Hydrographic Review*, **VIII**(1). Översättning av
   ett föredrag vid Verein Deutscher Seeschiffer, Hamburg,
   3 oktober 1906.
8. skrutnizer (2022, september). [Comment on estimating radius with a ruler and
   horizon curvature][ruler-comment]. Reddit, r/flatearth. Informell
   diskussion på nätet.
9. Sparavigna, A. C. (2013). [The Science of al-Bīrūnī][sparavigna].
   *International Journal of Sciences*, **2**(12), 52--60.
   doi:10.18483/ijSci.364. arXiv:1312.7288.
10. Young, A. T. (u.å.). [Dip of the Horizon][young]. San Diego State Universitys
   webbplats om astronomi.

\noindent Webbkällorna lästes 9--10 september 2026; jämförelserna med
Bislin, Kinlen, Sparavigna och Young kontrollerades på nytt 27 september 2026.

\endgroup

[bislin]: https://walter.bislins.ch/bloge/index.asp?page=Finding+the+curvature+of+the+Earth
[bislin-drop]: https://walter.bislins.ch/bloge/index.asp?page=Calculating+left-right+Horizon+Drop
[moll]: https://journals.lib.unb.ca/index.php/ihr/article/view/28507
[sparavigna]: https://arxiv.org/abs/1312.7288
[cyrulies]: https://www.scielo.br/j/rbef/a/DyQQTFPCRzwwJnJNq4K3v4z/?format=html&lang=es
[howe]: https://sciencemeetsfiction.com/2019/12/22/a-challenge-to-flat-earthers/
[kinlen]: https://abitofmaths.blogspot.com/2017/11/photographing-horizon.html
[nasa]: https://ntrs.nasa.gov/citations/19670017937
[lynch]: https://opg.optica.org/ao/abstract.cfm?uri=ao-47-34-H39
[ruler-comment]: https://www.reddit.com/r/flatearth/comments/xbd2zh/comment/io1jiof/
[young]: https://aty.sdsu.edu/explain/atmos_refr/dip.html
