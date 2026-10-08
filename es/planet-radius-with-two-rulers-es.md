---
title: "Medir el radio de un planeta con dos reglas"
subtitle: "Un método exacto basado en la curvatura del horizonte"
author: "Hob Nilre & Bo C. Herlin"
date: "2026-10-08"
lang: es
abstract: |
  El problema experimental abierto es si dos reglas fijas permiten
  determinar un radio planetario con incertidumbres cuantificadas de
  lectura, alineación y efectos atmosféricos. Este artículo establece
  una inversión exacta para una superficie esférica y rayos de luz
  rectos; las cuatro longitudes medidas no bastan por sí solas para
  separar el radio geométrico del desplazamiento atmosférico.
  Las magnitudes medidas son la altura $h$ del ojo sobre la superficie
  esférica, la distancia perpendicular $D$ del ojo al plano de las
  reglas, la separación $L$ entre los dos puntos donde el horizonte
  cruza una regla horizontal y la elevación $s$ del horizonte sobre
  esa regla en el punto medio entre los cruces, leída con una segunda
  regla vertical. El horizonte geométrico proyectado es una rama
  de hipérbola. Su elevación en el punto medio determina
  $T=\tan\delta$, donde $\delta$ es la depresión del horizonte
  geométrico, y por tanto $R=h(\sqrt{1+T^{2}}+1)/T^{2}$.
  La deducción utiliza identidades exactas y reformulaciones estables
  algebraicamente equivalentes, sin desarrollos para ángulos pequeños
  ni sustitución por un arco de circunferencia. Las sensibilidades
  exactas, las cotas finitas de medida y un protocolo para investigar
  discrepancias con signo especifican lo que debe comprobarse.
  El ejemplo resuelto es sintético; no se presentan observaciones
  de campo ni una incertidumbre instrumental alcanzada.
keywords:
  - depresión del horizonte
  - curvatura del horizonte
  - radio planetario
  - geometría esférica
  - enseñanza de la física
---

\begingroup\scriptsize\noindent PDF created: \pdfbuildtimestamp\par\noindent Latest on GitHub: \url{https://github.com/hobnilre/physics-sphere}\par\noindent Traducción al español del \href{https://github.com/hobnilre/physics-sphere/blob/main/planet-radius-with-two-rulers.md}{artículo original en inglés}.\par\endgroup

# Introducción

El problema abierto es establecer si un montaje fijo de dos reglas
permite determinar un radio planetario coherente con una incertidumbre
medida. Quedan tres preguntas: qué precisión alcanza el montaje,
cómo separar el desplazamiento atmosférico del horizonte geométrico
y si las discrepancias con signo persisten tras comprobaciones
independientes. Este artículo proporciona una inversión geométrica
exacta y un procedimiento para investigar esas preguntas. El ejemplo
resuelto es sintético; aún deben realizarse la validación del instrumento
y las mediciones de campo.

Con rayos de luz rectos, el horizonte de un planeta esférico queda por
debajo del plano horizontal local del observador, y su imagen sobre
un plano situado delante del ojo es curva. Tanto la depresión como la
curvatura dependen del radio del planeta y de la altura del observador.
Dentro de este modelo, las cuatro longitudes definidas a continuación
determinan el radio. La depresión del horizonte es un concepto clásico
utilizado en navegación astronómica; [Young (s. f.)][young] revisa sus
formas con y sin refracción. La curvatura es el efecto más difícil de
ver, porque a alturas habituales la desviación del horizonte respecto
de una recta es mucho menor que la anchura de un campo de visión normal.
Por eso las comprobaciones fotográficas requieren cuidado, como explica
[Lynch (2008)][lynch].

Este artículo trata el problema inverso con su instrumentación más
sencilla. Dos reglas corrientes, fijadas en un mismo plano vertical
delante de un solo ojo, proporcionan las medidas geométricas necesarias,
siempre que el observador conozca también la altura del ojo sobre la
superficie esférica y la distancia del ojo al plano de las reglas.
Una regla horizontal se coloca de modo que el horizonte visible la
cruce cerca de ambos extremos; una regla vertical en el punto medio
entre esos cruces mide cuánto se eleva el horizonte sobre la regla
horizontal. Se dispone así de cuatro longitudes, y el radio se obtiene
en forma cerrada bajo los supuestos indicados. Para un horizonte
afectado por la atmósfera, el mismo cálculo da un radio inferido con
el modelo de rayos rectos; hace falta una restricción atmosférica
independiente para identificarlo con el radio físico.

Inferir un radio a partir del horizonte es una idea antigua. En el
siglo XI, al-Bīrūnī midió la depresión del horizonte desde una colina
de altura conocida en Nandana, en el actual Pakistán, e invirtió la
relación para obtener el radio terrestre. [Sparavigna (2013)][sparavigna]
indica una diferencia de aproximadamente el dos por ciento respecto de
un radio de curvatura de referencia, utilizando una conversión
especificada de la unidad histórica de longitud. La inversión de la
depresión es la ecuación \eqref{eq:Rcos} que aparece más adelante.
Medirla directamente pasó a ser un problema instrumental para los
navegantes, que construyeron medidores específicos de depresión y de
horizonte. Con refracción anómala, encontraron desviaciones de diez
minutos de arco o más entre la depresión observada y los valores
tabulados [(Moll 1931)][moll]. El presente método obtiene el mismo
ángulo de depresión mediante dos lecturas de regla en lugar de un
instrumento de medida angular.

Más recientemente se han publicado mediciones de la curvatura del
horizonte. [Lynch (2008)][lynch] obtuvo el desplazamiento análogo a
partir de tres puntos del horizonte en una fotografía;
[Kinlen (2017)][kinlen] dedujo la proyección del horizonte sobre un
plano de imagen vertical; [Howe (2019)][howe] describió una comparación
muy relacionada entre el horizonte y un borde recto en una fotografía;
[Cyrulies (2025)][cyrulies] construyó un instrumento específico con
mira giratoria, retículo y cámara; y [Bislin (s. f.)][bislin] modela
una curvatura angular relacionada y presenta una longitud de arco
correspondiente, con refracción ajustable. Aún antes,
[Lichtenstein y Suit (1967)][nasa] probaron plantillas de horizonte
calibradas para el problema inverso de estimar la altura sobre un
cuerpo de radio conocido. La sección 8 compara esos trabajos con
el montaje utilizado aquí.

La exactitud es central en todo el desarrollo. Ningún paso utiliza
$\sin x\approx x$, $\tan x\approx x$, $\cos x\approx 1-x^{2}/2$,
un arco de circunferencia en lugar de la verdadera curva proyectada
ni ninguna aproximación justificada por el tamaño del planeta o por
lo pequeña que sea la elevación medida. Las reformulaciones
algebraicamente equivalentes introducidas por estabilidad numérica
se identifican como tales. La sección 2 define las cuatro magnitudes
medidas y el montaje; la sección 3 deduce la geometría exacta;
la sección 4 la invierte para obtener el radio; la sección 5 presenta
el procedimiento como lista de comprobación; la sección 6 desarrolla
un ejemplo numérico; y las secciones 7 y 8 analizan la exactitud y
los trabajos anteriores.

# La medición

## Magnitudes medidas

El método necesita cuatro longitudes medidas:

$h$

:   altura del ojo del observador sobre la superficie esférica local;

$D$

:   distancia perpendicular del ojo al plano de las reglas;

$L$

:   distancia horizontal entre los dos puntos donde el horizonte
    cruza la regla horizontal;

$s$

:   distancia vertical de la regla horizontal al horizonte en el
    punto medio entre los dos cruces.

La altura $h$ debe medirse sobre la misma superficie esférica que
forma el horizonte. Para un horizonte marino visto desde una colina,
incluye por tanto la elevación de la colina sobre el nivel del mar
y la altura del ojo sobre el suelo. Las cuatro longitudes deben
expresarse en la misma unidad.

En todo el artículo se supone $R>0$, $h>0$, $D>0$ y $L>0$.
El montaje descrito a continuación da entonces $s>0$, como se
confirma en la sección 3.3.

La distancia $D$ es imprescindible. Sin ella, $L$ y $s$ describen
solo una forma dibujada sobre la regla, no el tamaño angular de esa
forma visto desde el ojo. Distintas distancias del ojo a la regla
pueden producir los mismos $L$ y $s$ y corresponder a radios
planetarios diferentes.

## Montaje de observación

Monte la regla horizontal en un plano vertical delante del ojo,
perpendicular a la línea de visión horizontal central, y sitúela
de modo que el horizonte visible la cruce cerca de sus bordes
izquierdo y derecho. Utilice un solo ojo fijo y coloque ambas reglas
en el mismo plano vertical. La regla vertical debe estar en el punto
medio entre los dos cruces del horizonte, directamente delante del
ojo en la dirección lateral. Mida $D$ horizontalmente y en dirección
perpendicular a ese plano, no a lo largo de la línea de visión
descendente hacia el horizonte.

En el centro de la regla horizontal, utilice la regla vertical para
medir la distancia de la primera al horizonte visible. Con la
convención de coordenadas de la sección 3.1, $s$ es positiva cuando
el horizonte en el punto medio queda por encima de la regla
horizontal, como se espera siempre que esta pase por dos puntos
simétricos del horizonte. La figura 1 muestra el montaje.

[Howe (2019)][howe] describe una comparación muy relacionada con una
regla sobre una fotografía. Aquí la segunda regla lee directamente
la elevación en el punto medio, en el mismo plano y en el mismo
instante que los cruces.

Utilice un soporte rígido para las reglas y un apoyo para la cabeza
o un tope de observación que permita repetir la posición del punto
de observación monocular. Mida $D$ desde ese punto y registre la
incertidumbre de su posición. Compruebe la regla horizontal con un
nivel, y el plano de las reglas y la escala vertical con una
referencia de plomada, independientemente del horizonte.
El borde superior de medida y las marcas de referencia de la escala
vertical deben estar en el mismo plano: superponer una regla a la
otra no garantiza esa condición. Registre la rectitud, la flexión
y cualquier desviación respecto de ese plano.

El horizonte en el punto medio debe permanecer visible en la escala
vertical. Una escala transparente o una marca fina de referencia
pueden permitir la lectura, pero deben calibrarse su desplazamiento
óptico, su grosor y el error de interpolación. Una lectura fuera
del punto medio no es la $s$ de la deducción. Registre por separado
la separación entre divisiones, la interpolación, la dispersión de
lecturas repetidas y la incertidumbre de calibración; una escala
impresa fina no establece por sí sola la incertidumbre de una
lectura del horizonte. La sección 7 describe la validación
instrumental propuesta.

La deducción supone que el horizonte visible es el horizonte
geométrico de un planeta esférico. Al aplicar el método a un
horizonte observado, es necesario investigar colinas, olas,
edificios, bruma y refracción atmosférica.

![Montaje de observación. Izquierda: altura $h$ del ojo y distancia
perpendicular $D$ del ojo al plano de las reglas. Derecha: vista del
observador, con la separación $L$ entre los cruces y la elevación $s$
en el punto medio, medida desde el borde superior de la regla
horizontal. El dibujo es esquemático; la curvatura y las distancias
están exageradas.](figures/measurement-setup.png){width=100%}

\FloatBarrier

# Geometría exacta del horizonte

## Coordenadas y convenciones

Sitúe el ojo del observador en el origen $O=(0,0,0)$ de un sistema
cartesiano, donde $x$ es la dirección horizontal lateral a lo largo
de la regla, $y$ la dirección horizontal hacia delante desde el ojo
al plano de las reglas y $z$ la dirección vertical hacia arriba.
El centro del planeta queda entonces directamente debajo del ojo en

$$
C = (0,0,-(R+h)),
$$

donde $R$ es el radio planetario desconocido y el plano de las
reglas es $y=D$. Escriba $a=L/2$ para la mitad de la separación
entre los cruces.

En este sistema, los dos cruces medidos del horizonte están en
$(\pm a, D, z_{e})$ y el punto del horizonte directamente delante
del ojo está en $(0,D,z_{0})$. Ambas alturas son negativas porque
el horizonte visible queda por debajo del ojo, mientras que la
elevación medida en el punto medio

\begin{equation}\label{eq:sdef}
s = z_{0} - z_{e}
\end{equation}

es positiva. Esta definición fija el signo de una lectura
registrada incluso cuando el horizonte observado se aparta
del modelo supuesto.

## Ángulo de depresión del horizonte geométrico

Un rayo que sale del ojo en la dirección unitaria $\mathbf{u}$,
con $|\mathbf{u}|=1$, alcanza el horizonte geométrico cuando la
recta que define es tangente al planeta; es decir, cuando la
distancia perpendicular del centro planetario $C$ a esa recta
es $R$. Esa distancia es
$\sqrt{|C|^{2}-(C\cdot\mathbf{u})^{2}}$, por lo que la condición
de tangencia es

$$
|C|^{2} - (C\cdot\mathbf{u})^{2} = R^{2}.
$$

Como $|C| = R+h$ y $C\cdot\mathbf{u} = -(R+h)u_{z}$, resulta
$(R+h)^{2}\bigl(1-u_{z}^{2}\bigr) = R^{2}$.
Al dividir por $(R+h)^{2}$ se obtiene

$$
1-u_{z}^{2} = \left(\frac{R}{R+h}\right)^{2}.
$$

Para el horizonte visible, situado por debajo del ojo, $u_{z}$
es negativa, por lo que

$$
u_{z} = -\sqrt{1-\left(\frac{R}{R+h}\right)^{2}}.
$$

Para esta raíz, $C\cdot\mathbf{u} = -(R+h)u_{z} > 0$, así que el
punto de tangencia está en el rayo que sale hacia delante del ojo
y no en su prolongación hacia atrás.

Defina el ángulo exacto de depresión $\delta$ del horizonte por
debajo del plano horizontal local, con $0<\delta<\pi/2$, mediante
$u_{z}=-\sin\delta$. Entonces
$\sin\delta = \sqrt{1-\bigl(R/(R+h)\bigr)^{2}}$, y por tanto

\begin{equation}\label{eq:dip}
\cos\delta = \frac{R}{R+h}.
\end{equation}

La ecuación \eqref{eq:dip} es exacta para un planeta esférico con
rayos de luz rectos. Es la relación habitual de depresión sin
refracción, presentada en la misma forma por [Young (s. f.)][young].

## Proyección sobre el plano de las reglas

Un punto $(x,D,z)$ del plano de las reglas se ve desde el ojo
a lo largo del vector $\mathbf{v}=(x,D,z)$, cuya dirección
unitaria $\mathbf{u} = (x,D,z)/\sqrt{x^{2}+D^{2}+z^{2}}$
tiene componente vertical $u_{z} = z/\sqrt{x^{2}+D^{2}+z^{2}}$.
El punto está en el horizonte proyectado exactamente cuando
esa componente es $-\sin\delta$:

\begin{equation}\label{eq:proj}
\frac{z}{\sqrt{x^{2}+D^{2}+z^{2}}} = -\sin\delta.
\end{equation}

Al elevar \eqref{eq:proj} al cuadrado se obtiene
$z^{2} = \sin^{2}\delta\,(x^{2}+D^{2}+z^{2})$, es decir,
$z^{2}\bigl(1-\sin^{2}\delta\bigr) = \sin^{2}\delta\,(x^{2}+D^{2})$.
La identidad exacta $1-\sin^{2}\delta = \cos^{2}\delta$ y la
división por $\cos^{2}\delta>0$ dan
$z^{2} = \tan^{2}\delta\,(x^{2}+D^{2})$.
El horizonte visible está por debajo de la dirección horizontal
local, de modo que $z<0$ y

\begin{equation}\label{eq:curve}
z(x) = -\tan\delta\,\sqrt{x^{2}+D^{2}}.
\end{equation}

La raíz positiva que se descarta es la imagen especular del
horizonte por encima del ojo; no satisface \eqref{eq:proj} y
queda excluida por el signo de $u_{z}$. La ecuación
\eqref{eq:curve} es la rama inferior de la hipérbola
$z^{2}-x^{2}\tan^{2}\delta = D^{2}\tan^{2}\delta$ y es la curva
exacta del horizonte proyectado sobre el plano vertical de las
reglas. Aquí no se sustituye por un arco de circunferencia.
[Kinlen (2017)][kinlen] deduce la proyección equivalente para
un plano de imagen vertical: su distancia de observación $\nu$
corresponde a $D$ y su elevación central $\epsilon$ a $s$.
Las dos reglas aportan una medición física en ese plano.

Al evaluar \eqref{eq:curve} en el punto medio $x=0$ se obtiene
$z_{0} = -D\tan\delta$, y en cualquiera de los cruces $x=\pm a$,
$z_{e} = -\tan\delta\,\sqrt{a^{2}+D^{2}}$.
Sustituyendo ambos valores en \eqref{eq:sdef} y sacando
$\tan\delta$ como factor común,

\begin{equation}\label{eq:sag}
s = \tan\delta\,\Bigl(\sqrt{a^{2}+D^{2}}-D\Bigr).
\end{equation}

Como $\sqrt{a^{2}+D^{2}}>D$ para $a>0$, la ecuación
\eqref{eq:sag} confirma que $s>0$ bajo los supuestos indicados.
[Lynch (2008, sección 3 y figura 5)][lynch] mide el
desplazamiento análogo a partir de tres puntos del horizonte
en una fotografía; el modelo de sagita circular que introduce
después no es la proyección hiperbólica exacta deducida aquí.

Las reglas miden la forma proyectada del horizonte, no una
curva trazada sobre la superficie del planeta. Su elevación
y la geometría de observación proporcionan el ángulo de
depresión utilizado para calcular el radio.

# Inversión para obtener el radio planetario

## El ángulo de depresión a partir de las lecturas

Despejando la tangente del ángulo de depresión en
\eqref{eq:sag} y utilizando $a=L/2$,

\begin{equation}\label{eq:tandelta}
\tan\delta = \frac{s}{\sqrt{a^{2}+D^{2}}-D}
           = \frac{s}{\sqrt{D^{2}+(L/2)^{2}}-D}.
\end{equation}

Para el cálculo numérico, el denominador de
\eqref{eq:tandelta} puede racionalizarse exactamente. Como

$$
\Bigl(\sqrt{D^{2}+a^{2}}-D\Bigr)\Bigl(\sqrt{D^{2}+a^{2}}+D\Bigr)
= \bigl(D^{2}+a^{2}\bigr)-D^{2} = a^{2},
$$

al multiplicar numerador y denominador por
$\sqrt{D^{2}+a^{2}}+D$ se obtiene la magnitud

\begin{equation}\label{eq:T}
T \equiv \tan\delta
  = \frac{s\bigl(\sqrt{D^{2}+a^{2}}+D\bigr)}{a^{2}}
  = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}}.
\end{equation}

La ecuación \eqref{eq:T} evita restar dos números casi iguales
cuando $L$ es pequeña respecto de $D$, como suele ocurrir.
Es algebraicamente idéntica a \eqref{eq:tandelta} y no es una
aproximación.

## El radio

La relación de depresión \eqref{eq:dip} se invierte directamente.
Desarrollar $\cos\delta\,(R+h)=R$ da
$R\cos\delta + h\cos\delta = R$, de donde
$h\cos\delta = R\,(1-\cos\delta)$.
Al dividir por $1-\cos\delta$,

\begin{equation}\label{eq:Rcos}
R = \frac{h\cos\delta}{1-\cos\delta}.
\end{equation}

La ecuación \eqref{eq:Rcos} es el resultado de al-Bīrūnī:
convierte un ángulo de depresión observado desde una altura
conocida en el radio planetario. Todo lo anterior en este
artículo sirve para obtener $\delta$ mediante dos lecturas
de regla.

Como $0<\delta<\pi/2$, el coseno es positivo y se aplica la
identidad exacta $\cos\delta = 1/\sqrt{1+\tan^{2}\delta}$,
por lo que $\cos\delta = 1/\sqrt{1+T^{2}}$, con $T$ dado
por \eqref{eq:T}. Sustituyendo en \eqref{eq:Rcos} y
multiplicando numerador y denominador por $\sqrt{1+T^{2}}$,

\begin{equation}\label{eq:Rminus}
R = \frac{h/\sqrt{1+T^{2}}}{1-1/\sqrt{1+T^{2}}}
  = \frac{h}{\sqrt{1+T^{2}}-1}.
\end{equation}

Racionalizar \eqref{eq:Rminus} del mismo modo que antes
proporciona la forma que conviene utilizar en la práctica,

\begin{equation}\label{eq:R}
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}},
\end{equation}

que evita restar dos números casi iguales cuando $T$ es
pequeña. Como \eqref{eq:T}, es una reformulación exacta,
no una aproximación.

## Resultado

Midiendo $h$, $D$, $L$ y $s$ en una unidad común y
combinando \eqref{eq:T} con \eqref{eq:R}, el radio
planetario se obtiene como

$$
\boxed{\;
T = \frac{4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)}{L^{2}},
\qquad
R = \frac{h\bigl(\sqrt{1+T^{2}}+1\bigr)}{T^{2}}.
\;}
$$

Dos casos degenerados limitan la aplicabilidad del método.
Con $h=0$, el horizonte geométrico da $s=0$ para cualquier
radio, por lo que ninguna observación con el ojo en la
superficie puede determinar $R$. Para $h>0$, un valor medido
$s\le 0$ queda fuera del dominio de la inversión de radio
positivo y no debe introducirse en \eqref{eq:R}, donde
elevar $T$ al cuadrado ocultaría su signo. Conserve esas
lecturas, sus incertidumbres y las condiciones de observación
para el análisis de discrepancias de la sección 7.
Una lectura positiva cuyo intervalo permitido alcance $s=0$
no proporciona una cota superior finita del radio a partir
de estas medidas por sí solas.

Las cuatro longitudes determinan el radio solo dentro del
modelo esférico con rayos rectos indicado. El desplazamiento
atmosférico y el error de medida siguen requiriendo una
evaluación independiente.

# Procedimiento

1. Fije una incertidumbre objetivo para el radio inferido y
   calibre el montaje como se describe en la sección 7.
   Mida la altura $h$ del ojo sobre la superficie esférica
   que forma el horizonte, con su incertidumbre.
2. Fije el ojo observador y ambas reglas. Compruebe que sus
   referencias de medida comparten un plano vertical y mida
   la distancia horizontal perpendicular $D$ del punto de
   observación a ese plano.
3. Compruebe la nivelación de la regla y la verticalidad del
   plano independientemente del horizonte; registre la
   incertidumbre de alineación y posición.
4. Alinee la regla horizontal para que el horizonte visible
   la cruce en dos puntos simétricos cerca de sus bordes,
   con el punto medio directamente delante del ojo en la
   dirección lateral.
5. Mida la distancia $L$ entre esos cruces y conserve sus
   posiciones e incertidumbres.
6. En el punto medio, mida la elevación vertical con signo
   $s$ desde el borde de medida de la regla horizontal al
   horizonte. Registre su incertidumbre, el instante y las
   condiciones del horizonte, incluidas las lecturas nulas
   o negativas.
7. Para $h,D,L,s$ positivos, calcule
   $T = 4s\bigl(\sqrt{D^{2}+(L/2)^{2}}+D\bigr)/L^{2}$ y
   $R = h\bigl(\sqrt{1+T^{2}}+1\bigr)/T^{2}$.
   Evalúe cotas finitas de incertidumbre como en la sección 7;
   conserve los datos fuera del dominio sin asignarles un radio.
8. Repita con ajustes de las reglas registrados y condiciones
   comparables. Presente los residuos con signo, las restricciones
   atmosféricas, las comprobaciones realizadas y toda discrepancia
   que siga sin resolverse.

# Ejemplo resuelto

Los números de esta sección son sintéticos. La elevación $s$
se calculó con la relación directa \eqref{eq:sag} para un
radio supuesto $R=6371.0$ km, el radio medio de la Tierra.
La elevación sin redondear es $1.774674087576960\ldots$ mm;
se redondeó al múltiplo de $0.001$ mm más próximo para
imitar una lectura de regla. Este redondeo numérico no
demuestra una capacidad de lectura. El ejemplo comprueba
la inversión y muestra su sensibilidad; no presenta una
observación y, por construcción, no contiene refracción,
desplazamientos del horizonte por olas o relieve ni errores
de alineación.

Considere un observador hipotético en una cumbre costera
mirando al horizonte marino, con una regla de un metro
fijada a $D=0.6000$ m y una segunda regla en su punto medio:

| Magnitud                                | Símbolo | Valor                                      |
|:----------------------------------------|:--------|:-------------------------------------------|
| Altura del ojo sobre el mar              | $h$     | $2000.0$ m                                 |
| Distancia del ojo al plano de las reglas | $D$     | $0.6000$ m                                 |
| Separación entre los cruces del horizonte| $L$     | $0.6000$ m                                 |
| Elevación en el punto medio              | $s$     | $1.775$ mm $= 1.775\times10^{-3}$ m          |

Los cuatro valores se expresan en metros para este cálculo.
Evaluando primero el término entre paréntesis de \eqref{eq:T},

$$
\sqrt{D^{2}+(L/2)^{2}} = 0.6708204\ \text{m},
\qquad
\sqrt{D^{2}+(L/2)^{2}}+D = 1.2708204\ \text{m},
\qquad
L^{2} = 0.360000\ \text{m}^{2},
$$

de modo que

$$
T = \frac{4\,(1.775\times10^{-3})\,(1.2708204)}{0.360000}
  = 2.506340\times10^{-2},
$$

lo que corresponde a una depresión del horizonte de
$\delta=\arctan T=1.4357^{\circ}$. Entonces
$T^{2}=6.281741\times10^{-4}$ y $\sqrt{1+T^{2}}=1.0003140$,
por lo que \eqref{eq:R} da

$$
R = \frac{2000.0\,(2.0003140)}{6.281741\times10^{-4}}
  = 6.368661\times10^{6}\ \text{m}
  = 6368.7\ \text{km}.
$$

Este resultado está un $0.037\%$ por debajo de los
$6371.0$ km supuestos, y toda la discrepancia procede
de redondear $s$ al múltiplo de $0.001$ mm más próximo.
El ejemplo también muestra por qué se prefieren
\eqref{eq:T} y \eqref{eq:R} a sus equivalentes sin
racionalizar: aquí $\sqrt{1+T^{2}}-1 = 3.1404\times10^{-4}$,
de modo que el denominador de \eqref{eq:Rminus} es la
diferencia de dos números que coinciden hasta la tercera
cifra decimal, y esa coincidencia aumenta al disminuir $T$.

La sensibilidad del resultado a la lectura de la regla puede
expresarse exactamente. Derivar \eqref{eq:Rminus}, utilizar
$R=h/(\sqrt{1+T^{2}}-1)$ para eliminar $h$ y simplificar
con $T^2=(\sqrt{1+T^2}-1)(\sqrt{1+T^2}+1)$ da

\begin{equation}\label{eq:sens}
\frac{\partial \ln R}{\partial \ln T}
= -\left(1+\frac{1}{\sqrt{1+T^{2}}}\right).
\end{equation}

Esta forma algebraicamente equivalente evita la resta de
números casi iguales; no interviene ninguna aproximación.
Como $T$ es exactamente proporcional a $s$ con $D$ y $L$
fijas, $\partial \ln R/\partial \ln s$ toma el mismo valor.
Para la $T$ de este ejemplo, \eqref{eq:sens} vale
$-1.99969$. Que \eqref{eq:sens} tienda a $-2$ cuando
$T\to0$ es un límite, no una aproximación. Su importancia
práctica se aprecia mejor recalculando exactamente el radio
con lecturas próximas. Suponga, a modo ilustrativo, una
incertidumbre de lectura alcanzada de $\pm0.05$ mm, aquí
el $2.8\%$ de $s$, con las demás entradas fijas.
Esta capacidad supuesta no se ha demostrado para el
montaje. Los extremos dan

$$
s = 1.725\ \text{mm} \;\Rightarrow\; R = 6743\ \text{km},
\qquad
s = 1.825\ \text{mm} \;\Rightarrow\; R = 6025\ \text{km},
$$

un cambio de $+5.8802\%$ y $-5.4035\%$, respectivamente,
respecto del radio central inferido, o aproximadamente
$\pm6\%$. Estos porcentajes utilizan los radios extremos
sin redondear; un informe experimental debe conservar las
cotas asimétricas. La altura interviene proporcionalmente,
puesto que $\partial \ln R/\partial \ln h = 1$ exactamente.
Con $D$ y $\delta$ fijas, $s$ crece con la separación real
$L$ entre los cruces. Aumentar $L$ reduce la incertidumbre
relativa de lectura si la incertidumbre absoluta de $s$
permanece fija; las demás contribuciones siguen necesitando
evaluación. Esa es la razón de elegir $L=D$ en el ejemplo.

Un pequeño cambio en la diminuta elevación puede producir
un cambio relativo mayor en el radio inferido. El ejemplo
muestra esa sensibilidad; no mide la exactitud real de
lectura del instrumento.

# Exactitud y efectos sistemáticos

## La validación del instrumento sigue pendiente

No se han medido las incertidumbres de lectura y alineación
alcanzadas por este montaje. La evaluación exacta de
\eqref{eq:sag}, con $R=6371.0$ km y $D=L=0.6000$ m, da
las siguientes señales sintéticas:

| Altura del ojo $h$ | Elevación predicha $s$ |
|:-------------------|-----------------------:|
| $1.7$ m            | $0.0517361$ mm          |
| $10$ m             | $0.125479$ mm           |
| $100$ m            | $0.396800$ mm           |
| $2000$ m           | $1.7746741$ mm          |

A $h=1.7$ m, la señal predicha es comparable a la
incertidumbre ilustrativa de lectura de $0.05$ mm de la
sección 6. Por tanto, el intervalo útil de alturas debe
establecerse a partir de la incertidumbre alcanzada y de
los efectos de la flexión de las reglas, el movimiento
del ojo, la nivelación, la posición de la escala y la
visibilidad del horizonte.

Una primera comprobación propuesta utiliza una esfera de
radio medido independientemente, manteniendo las mismas
definiciones de $h,D,L,s$ y la relación directa exacta.
Elija un intervalo objetivo para el radio, mida la
calibración y la repetibilidad del montaje, y varíe $D$
y la separación real $L$ entre los cruces dentro del
intervalo de uso previsto. Registre intervalos, pasos
entre ajustes, repeticiones, casos límite y ajustes
no probados. La concordancia en esta prueba controlada
validaría el montaje únicamente en las condiciones
ensayadas. Seguirían sin resolverse los efectos
atmosféricos sobre un horizonte planetario. Aquí no se
presenta tal validación.

## Sensibilidades exactas y cotas finitas

Las cuatro longitudes medidas contribuyen al resultado.
Escriba $q=\sqrt{D^2+(L/2)^2}$ y
$\gamma=1+1/\sqrt{1+T^2}$. Derivar \eqref{eq:T} y utilizar
\eqref{eq:sens} da las sensibilidades locales exactas

\begin{equation}\label{eq:all-sens}
\begin{aligned}
\frac{\partial\ln R}{\partial\ln h}&=1,
&\frac{\partial\ln R}{\partial\ln s}&=-\gamma,\\
\frac{\partial\ln R}{\partial\ln D}&=-\gamma\frac{D}{q},
&\frac{\partial\ln R}{\partial\ln L}&=\gamma\left(1+\frac{D}{q}\right).
\end{aligned}
\end{equation}

Por ejemplo, la derivación logarítmica de $T=4s(q+D)/L^2$
da $\partial\ln T/\partial\ln D=D/q$ y
$\partial\ln T/\partial\ln L=-1-D/q$; multiplicar por
$\partial\ln R/\partial\ln T=-\gamma$ produce la última
fila. Para la lectura redondeada de la sección 6, los
coeficientes de $(h,D,L,s)$ son
$(1,-1.78857,3.78826,-1.99969)$. Estas derivadas describen
la respuesta local; las incertidumbres finitas deben
evaluarse con la propia inversión exacta.

Denote la aplicación combinada \eqref{eq:T}--\eqref{eq:R}
por $F(h,D,L,s)$. Para intervalos de entrada positivos
que formen un dominio rectangular, con subíndices $-$ y
$+$ para sus extremos inferior y superior, los signos de
\eqref{eq:all-sens} se mantienen en todo el dominio.
Por tanto, los extremos exactos son

\begin{equation}\label{eq:interval}
\begin{aligned}
R_{\min}&=F(h_-,D_+,L_-,s_+),\\
R_{\max}&=F(h_+,D_-,L_+,s_-).
\end{aligned}
\end{equation}

Las correlaciones pueden restringir las combinaciones
posibles; la caja que las contiene proporciona entonces
cotas conservadoras. En particular, $L$ y $s$ comparten
el mismo borde de referencia y las mediciones de los
cruces. Conserve esas dependencias cuando se conozcan.
Si la $s$ positiva permitida se acerca a cero con
$h,D,L$ positivos y fijos, la cota superior del radio
diverge. Conserve también cualquier parte negativa del
intervalo registrado. Estas cotas recogen la
incertidumbre de entrada dentro del modelo indicado;
por sí solas no acotan las desviaciones respecto
de ese modelo.

## Separar la refracción del radio sigue siendo un problema abierto

Una atmósfera puede modificar la depresión aparente del
horizonte, y el cambio puede tener ambos signos.
El efecto depende de las condiciones atmosféricas;
adoptar un coeficiente de refracción cerca de la
superficie no establece una corrección para una
observación concreta [(Young, s. f.)][young].
Queda por medir qué efecto domina la incertidumbre
de este montaje.

Para entender por qué repetir los ajustes de las reglas
no resuelve esta cuestión, sea $\delta_{\rm app}$ la
depresión aparente. Si la propagación entre el ojo y
las reglas es recta y la depresión aparente es
constante en los acimuts observados, el argumento
de proyección de la sección 3 da

\begin{equation}\label{eq:apparent}
B_i=\frac{(L_i/2)^2}{\sqrt{D_i^2+(L_i/2)^2}+D_i},
\qquad
s_i=B_i\tan\delta_{\rm app}.
\end{equation}

Aquí $i$ identifica un ajuste de las reglas y $B_i$
es el factor geométrico racionalizado de elevación.
Con altura y condiciones atmosféricas fijas, todos
los cocientes $s_i/B_i$ estiman el mismo escalar.
La concordancia comprueba la proyección y la
coherencia de las lecturas, pero no permite una
separación independiente entre depresión geométrica
y desplazamiento atmosférico.

Defina $\rho=\delta-\delta_{\rm app}$, positiva
cuando la atmósfera eleva el horizonte aparente.
Sustituyendo en la inversión exacta de la depresión,

\begin{equation}\label{eq:refraction-conditional}
R=\frac{h\cos(\delta_{\rm app}+\rho)}
        {1-\cos(\delta_{\rm app}+\rho)},
\qquad
0<\delta_{\rm app}+\rho<\pi/2.
\end{equation}

Esta identidad está condicionada a $\rho$; no
determina esa magnitud ni aporta un modelo
atmosférico. Se necesita una restricción independiente
sobre $\rho$ para acotar el radio físico. Evalúe la
expresión mediante \eqref{eq:R} con
$T=\tan(\delta_{\rm app}+\rho)$ para evitar
cancelaciones.

La sensibilidad puede ilustrarse sin adoptar un
modelo de refracción. Partiendo de la depresión
geométrica exacta para $R=6371.0$ km y $h=2000$ m,
reducir la depresión aparente en exactamente $10$
minutos de arco da un radio inferido con rayos rectos
de $8155.16$ km; aumentarla en el mismo ángulo da
$5114.09$ km. Son perturbaciones angulares sintéticas,
no observaciones ni cotas de incertidumbre
atmosférica. [Moll (1931)][moll] presenta desviaciones
de diez minutos de arco o más respecto de las
depresiones tabuladas, pero ese informe no establece
el desplazamiento del experimento propuesto.
La concordancia con un radio conocido, incluida la
comparación histórica de al-Bīrūnī, no mide
independientemente la refracción.

Repetir los ajustes de las reglas permite comprobar
la coherencia de las lecturas y de la proyección
mientras se estima el mismo ángulo aparente del
horizonte. Por sí solo, no separa el radio del
planeta del efecto de la atmósfera.

## Residuos con signo y resultados no resueltos

Para una esfera de radio $R_\star$ conocido de forma
independiente, la tangente exacta de la depresión
geométrica a la altura registrada $h_i$ es
$T_{\star,i}=\sqrt{h_i(2R_\star+h_i)}/R_\star$.
Utilizando $B_i$ de \eqref{eq:apparent}, defina el
residuo de elevación con signo

\begin{equation}\label{eq:rise-residual}
r_{s,i}=s_i-B_iT_{\star,i}.
\end{equation}

Un residuo positivo significa una elevación mayor
que la predicha y, para lecturas positivas con
las demás entradas fijas, un radio inferido menor.
Cuando el radio es desconocido, las observaciones
a la misma altura pueden comprobar la coherencia
de $T_i=s_i/B_i$ con un valor común ajustado $T$.
Presente el parámetro ajustado, su incertidumbre
y el número de observaciones independientes.
Invertir una sola lectura para obtener un radio
y reproducirla utilizando ese mismo radio no
constituye una prueba independiente del modelo.

Conserve las lecturas originales con signo, los
instantes, la posición del ojo, las comprobaciones
de alineación, las condiciones del horizonte y
las dependencias entre medidas. Presente los
residuos en unidades de longitud y las diferencias
de radio inferido con sus signos. Investigue
los cambios con $D$, $L$, la alineación y las
condiciones de observación, incluidos los cruces
por cero y los intervalos que alcanzan $s=0$.
Registre los intervalos y la resolución ensayados,
el número de repeticiones y las regiones no
probadas. Compruebe calibración, signos, redondeo,
precisión numérica y supuestos físicos antes
de atribuir un residuo a una causa. Una
explicación propuesta debe dar cuenta de su
magnitud, signo y condiciones. Toda discrepancia
que siga sin resolverse es un resultado abierto
y debe figurar entre los resultados principales,
junto con las comprobaciones ya realizadas.

Este artículo no mide ni calcula trabajo o
cambios de energía; no se ha evaluado un balance
energético. Si un experimento presenta un cambio
de energía inesperado, indíquelo entre los
principales resultados abiertos y defina la
frontera del sistema, todos los puertos de
transferencia de energía y un intervalo medido
$[t_0,t_1]$. Tomando positiva hacia el sistema
la potencia de cada puerto, integre cada una
por separado:

\begin{equation}\label{eq:energy-audit}
W_k=\int_{t_0}^{t_1}P_k(t)\,dt,
\qquad
r_E=E(t_1)-E(t_0)-\sum_k W_k.
\end{equation}

Contabilice conmutaciones, discontinuidades e
impulsos exactamente una vez, evalúe de forma
independiente ambos estados de energía
almacenada y cuantifique el error de integración
y los residuos del modelo. No suponga energía
almacenada constante a partir de un montaje
estático. Presente por separado los cambios
de energía almacenada y cualquier residuo
inexplicado del balance, con magnitud, signo,
condiciones y comprobaciones realizadas.
La ecuación \eqref{eq:energy-audit} especifica
un protocolo para ese tipo de resultado;
aquí no se aportan datos energéticos.

# Relación con trabajos anteriores

[Cyrulies (2025)][cyrulies] presenta un experimento
de curvatura del horizonte desde una altura
conocida con mira giratoria, retículo y cámara;
su instrumento y sus mediciones angulares
difieren de las reglas fijas utilizadas aquí.
Anteriormente, [Lichtenstein y Suit (1967)][nasa]
probaron plantillas de horizonte calibradas
para estimar la altura sobre un cuerpo de
radio conocido, el problema inverso relacionado.
Una propuesta informal de
[skrutnizer (2022)][ruler-comment] también sugiere
estimar el radio a partir de la altura y de
la curvatura angular del horizonte sobre una
regla; prueba que la idea se discutió antes,
pero no es una fuente de las ecuaciones
anteriores.

El método también se inscribe en la tradición
más antigua de las mediciones de depresión.
La inversión de al-Bīrūnī \eqref{eq:Rcos}
permanece inalterada; lo que cambia es cómo
se obtiene $\delta$. Los medidores de
depresión utilizados en navegación la leen
directamente con un prisma y una escala de
sextante [(Moll 1931)][moll], mientras que las
dos reglas la infieren a partir de longitudes.
Esto elimina la necesidad de una escala
angular calibrada a costa de requerir $D$.
[Bislin (s. f.)][bislin] calcula una curvatura
angular relacionada y una longitud de arco
correspondiente, con refracción ajustable.
Su [definición del descenso indicado][bislin-drop]
es $p=v\psi$, donde $v$ es la distancia del ojo
al horizonte y $\psi$ el descenso angular;
no es directamente la longitud $s$ en el
plano de las reglas. El arco es una
convención para expresar un ángulo como
longitud y no establece una sustitución
circular del horizonte proyectado.

Para rayos extremos correspondientes en el
plano vertical actual, $\psi$ es el ángulo
entre el rayo central del horizonte y el
rayo dirigido al punto medio de la cuerda
entre los extremos. Ese punto medio tiene
coordenadas $(0,D,z_e)$, por lo que su
depresión es $\arctan(-z_e/D)$.
La conversión exacta, deducida aquí a partir
de \eqref{eq:curve}, es

\begin{equation}\label{eq:angular-bow}
\begin{aligned}
\psi&=\arctan\!\left(T\frac{\sqrt{D^2+a^2}}{D}\right)-\arctan T,\\
s&=D\bigl[\tan(\delta+\psi)-\tan\delta\bigr].
\end{aligned}
\end{equation}

Esto identifica el observable relacionado
sin igualar $p$ con $s$ ni $v$ con $D$.
El modelo de Bislin calcula en sentido
directo a partir de un radio supuesto;
el presente método invierte las cuatro
longitudes medidas para obtener $R$ bajo
los supuestos indicados.

Estos antecedentes establecen tanto el
principio de medida como la geometría
proyectada. Aquí se presenta una
implementación explícita con dos reglas
y una inversión exacta en términos de
$h$, $D$, $L$ y $s$. Una búsqueda
bibliográfica no localizó esa combinación
completa, pero no encontrar un montaje
en una búsqueda no demuestra su
originalidad histórica.

# Conclusión

La precisión del instrumento, la separación
del desplazamiento atmosférico y el radio
geométrico, y la investigación de
discrepancias persistentes con signo
siguen siendo las preguntas experimentales
abiertas. Aquí no se han establecido
observaciones de campo ni una incertidumbre
instrumental alcanzada. Un experimento
controlado con una esfera puede comprobar
el montaje; una observación planetaria
requiere además una restricción
atmosférica independiente. Repetir los
ajustes de las reglas no proporciona
por sí solo esa restricción.

Para una superficie esférica y rayos
rectos, las longitudes medidas $h,D,L,s$
determinan $R$ exactamente mediante
\eqref{eq:T} y \eqref{eq:R}.
El horizonte proyectado es una hipérbola,
el álgebra no requiere un desarrollo
para ángulos pequeños y el ejemplo
sintético comprueba la inversión.
Las cotas finitas y el protocolo de
residuos hacen explícitas las próximas
pruebas experimentales. Presente toda
discrepancia que sobreviva a esas
comprobaciones como un resultado abierto,
con su signo, magnitud, condiciones e
incertidumbres restantes.

# Referencias {-}

\begingroup\small

1. Cyrulies, E. E. (2025). [The relationship between earth size and horizon
   curvature: its determination with a device built for a distance learning
   class][cyrulies]. *Revista Brasileira de Ensino de Física*, **47**.
   Publicado el 6 de octubre de 2025. doi:10.1590/1806-9126-RBEF-2025-0275.
   Artículo en español; título en inglés proporcionado por la revista.
2. Bislin, W. (s. f.). [Finding the curvature of the Earth][bislin] y
   la herramienta adjunta Advanced Earth Curvature Calculator. *walter.bislins.ch*.
   Recurso web creado el 27 de agosto de 2019. Véase también [Calculating left-right
   Horizon Drop][bislin-drop] (17 de febrero de 2020), especialmente la ecuación (10).
3. Howe, A. R. (2019, 22 de diciembre). [A Challenge to Flat Earthers][howe].
   *Science Meets Fiction*. Entrada de blog.
4. Kinlen, P. (2017, 27 de noviembre). [Photographing the horizon][kinlen].
   *A bit of maths*. Entrada de blog.
5. Lichtenstein, J. H., y Suit, W. T. (1967). [An experimental investigation
   of two visual methods of altitude determination][nasa]. NASA TM X-1392,
   Langley Research Center.
6. Lynch, D. K. (2008). [Visually discerning the curvature of the
   Earth][lynch]. *Applied Optics*, **47**(34), H39--H43.
   doi:10.1364/AO.47.000H39.
7. Moll, E. (1931). [Measurement of the dip of the horizon][moll].
   *The International Hydrographic Review*, **VIII**(1). Traducción de
   una conferencia impartida en el Verein Deutscher Seeschiffer, Hamburgo,
   el 3 de octubre de 1906.
8. skrutnizer (2022, septiembre). [Comment on estimating radius with a ruler and
   horizon curvature][ruler-comment]. Reddit, r/flatearth. Discusión informal
   en línea.
9. Sparavigna, A. C. (2013). [The Science of al-Bīrūnī][sparavigna].
   *International Journal of Sciences*, **2**(12), 52--60.
   doi:10.18483/ijSci.364. arXiv:1312.7288.
10. Young, A. T. (s. f.). [Dip of the Horizon][young]. Sitio web de astronomía
   de San Diego State University.

\noindent Fuentes web consultadas el 9--10 de septiembre de 2026;
las comparaciones con Bislin, Kinlen, Sparavigna y Young se revisaron
de nuevo el 27 de septiembre de 2026.

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
