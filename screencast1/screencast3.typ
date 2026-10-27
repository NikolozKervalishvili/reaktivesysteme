#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Parallelität])

= Beispiel Synchronisation ?

$
  "CS" & eq.def #overline[pub]. #overline[coin]."coffe"."CS" \
  "CM" & eq.def "coin".#overline[coffee]."CM"
$

Als Veranschaulichung, $"CS"$ ist eine Prozesskonstante, definiert durch 3 Aktionen und dann anschließend _rekursiv_ durch sich selber.

Also ein Informatiker, der publiziert $->$ Münze einwirft $->$ Kaffe bekommt $->$ von vorne. Analog die Kaffeemaschine

Wie die Grammatik vorgibt, werden hier $"coin"$ und #overline[$"coin"$] Synchronisiert. Analog der Kaffee auch. Das heißt, wenn der Informatiker die Münze einwirft, muss zum gleichen Zeitpunkt (da die Synchronisation _atomar_ läuft) die Kaffeemaschine die Münze erhalten.

#warning[Wie auch in @Parallelschaltung genannt, ist diese Synchronisation optional, die Nebenläufigkeit ist jedoch gegeben.]

#image("kaffe-sync.png")

Daher ergibt sich eine neue Syntax, die der Parallelschaltung durch $P_1 | P_2 in "Process"$.

#definition(name: "Parallelschaltung")[\
  #columns(2)[
    #underline[wenn] $P_1 in "Prozess"$\
    und $P_2 in "Prozess"$\
    \
    #underline[dann] $P_1 | P_2 in "Process"$

    #colbreak()

    / $P_1 "und" P_2$: - sind nebenläufig (concurrent)
      - agieren unabhängig
      - können sich syncen (per handshake)
  ]
]<Parallelschaltung>

== Beispiel
$ a. 0 | #overline[a].0 $

Da die Synchronisation nicht gezwungen ist, gibt es 3 Möglichkeiten des Verlaufes

+ erst $a$, dann #overline[$a$], dann nichts
+ erst #overline[$a$], dann $a$, dann nichts
+ erst $a|#overline[$a$]$ dann , dann nichts

Für letzteres wird auch $tau$ benutzt für "trace", da wir nicht wissen was passiert ist außer dass eine Interaktion stattgefunden hat.

== Beispiel

Es hindert uns nichts daran, zwei Informatiker zu definieren und daher einen Nichtdeterminismus einzubringen. Dabei ist zu bedenken, dass wenn eine Aktion ausgeführt wird diese verbraucht ist. Also man kann nur einmal Münze werfen bis zum nächsten Rekursionsaufruf, da diese Aktion dort neu definiert wird und daher wieder benutzbar ist.

#image("doppel-informatiker.png")
