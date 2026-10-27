#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Restriktion])

= Sichtbarkeit / Restriktion

/ Modellierungswunsch: Es kann nützlich sein, die Sichtbarkeit von Aktionen einzuschränken \ $-->$ die Kontrolle über die "Schwärze" einer Black Box.

== Beispiel private Teemaschine

In _./screencast3_ haben sich zwei Informatiker über eine Kaffeemaschine gestritten (der Nichtdeterminismus).

#definition[
  #table(
    gutter: (),
    table.vline(x: 1, stroke: 0.5pt),
    table.hline(y: 2, end: 1, stroke: 0.5pt),
    columns: (1fr, 1fr),
    table.header[][],
    [#underline[wenn] $P in "Process"$\ und $a in "Name"$\ \ #underline[dann] $P without_a in "Process"$],
    [verhält sich genau wie $P$, außer dass die in $a$ bzw. $L$ genannten Namen nach außen nicht sichtbar sind.

      Keine Interaktion mit der Umgebung von $P without_a$ via $a$-Handshake möglich!
    ],

    [#underline[wenn] $P in "Process"$\ und $L subset.eq "Name"$\ \ #underline[dann] $P without_L in "Process"$],
  )]

#pagebreak(weak: true)

== Beispiel Beschränkung

#image("beschränkung.png", width: 75%)

Hier kommt der äußere Prozess CS nicht an die innere Kaffeemaschine ran, durch die #text(red)[Beschränkung in der Syntax.] Innerhalb der Restriktion jedoch kann durch Aktion und Co-Aktion per Handshake eine neue Aktion $tau$ enstehen die nicht von der Restriktion betroffen ist.
