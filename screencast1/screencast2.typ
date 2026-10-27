#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Basissprache])

= Modellierungssprache CCS
- Syntax für Prozesse und deren Verhalten (vor allem Kontrollstrukturen!)
- generiert als formale Sprache per kontextfreier Grammatik

Ziel ist es große Systeme zu verstehen, daher bauen wir sie
modular auf durch Operatoren in CCS. Dies muss formal geschehen, damit Prozesse CCS lesen und ausprogrammieren können.

#align(center)[formal $->$ mechanisierbar $->$ algorithmisch]

== Operatoren
#table(
  columns: (1fr, 1fr),
  stroke: 1pt,
  gutter: (),
  [Syntax], [informelle Semantik],
  [$ 0 in "Prozess" $], [0 macht nichts mehr, terminiert],
  [#underline[wenn] $alpha in "Aktion"$\
    und $P in "Prozess"$,\
    #underline[dann] $alpha. P in "Prozess"$],
  [/ $alpha. P$: Führt zunächst die Aktion $alpha$ aus, und macht dann weiter mit $P$],

  [#underline[wenn] $P in "Prozess"$\
    und $Q in "Prozess"$,\
    #underline[dann] $P + Q in "Prozess"$],
  [/ $P+Q$: ist ein weiterer Prozess und verhält sich #underline[entweder] wie $P$ #underline[oder] wie $Q$],
)

== Beispiel: Endliche Prozesse

#v(2em)

#align(
  center,
  text(size: 16pt)[#math.underbrace(
    [#math.underbrace([take], [Aktion]) . #math.underbrace([#math.underbrace([strike], [Aktion]) . #math.underbrace([0], [Prozess])], [Prozess])],
    [Prozess],
  )],
)

== Beispiel: Nichtdeterminismus

$
    & "coin".(overline("coffe").0 + "Tea".0) \
  = & "coin". overline("coffe").0 + "coin"."Tea".0 \
$

Beides ist Valide.

== Operator

Dieser betrifft Prozesskonstanten.

#definition(name: "Prozesskonstanten")[\
  #columns(2)[
    #underline[wenn] $P in "Prozess"$\
    und $bold(K) in "Prozesskonstante"$\
    und $bold(K) eq.def "Prozesskonstante"$\
    \
    #underline[dann] $bold(K) in "Prozess"$

    #colbreak()

    / $bold(K)$: ist eine Konstante (ein Bezeichner), die anstelle ihrer Defintion benutzt werden darf.
  ]]

Dies ermöglicht Rekursion wie in @bsp-unendliche-prozesse gezeigt.

== Beispiel: Unendliche Prozesse <bsp-unendliche-prozesse>

$
  "Clock" & eq.def "tick.Clock" \
          & = "tick.(tick.Clock)" \
          & = "tick.(tick.(tick.Clock))"
$

Dies ist vergleichbar mit Grammatiken.

/ $P --> a P$: $P => a P => a a P => a a a P$
