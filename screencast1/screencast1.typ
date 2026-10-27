#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Prinzipen])

= Prinzip Synchronisation

/ Handshake zwischen Prozessen:
- immer *exakt* zwei Prozesse beteiligt
- ungerichtet
- Handshake passiert atomar/instant
- gleichzeitig: synchron

/ unabhängige ("Taktlose") Prozesse:
- asynchrone Zeit
- Synchronisation nur möglich via Handshake
- diese Verlaufen zeitlich unabhängig voneinander

== Syntax des Handshakes

Bei einem Handshake gehen Prozesse von einem Zustand vorher in einen
Zustand nachher. In CCS realisiert durch

#definition(name: "Syntax")[\
  #table(
    columns: (1fr, 1fr),
    [Namen], [Co-Namen],
    [a,b,c,d,e,...,ack, fail],
    [$overline(a),overline("b"),overline("c"),overline("d"),overline("e"),...,overline("ack"), overline("fail")$],
  )

  Benutze ein Prozess einen Namen (ack), und ein anderer einen Co-Namen (#overline("ack")), so sollen die Prozesse durch ein Handshake an dieser Stelle synchronisiert werden.
]

Namen und Co-Namen werden beide auch als Aktionen bezeichnet.

#pagebreak(weak: true)

== Prinzip Außensicht

#v(2em)

#image("außensicht.png", width: 200pt)

/ #text(red)[Interface]: als Menge der Kommunikationsangebote, Knoten auch Ports genannt
/ Black Boxes: Die inneren Prozesse, da man oft nicht genau weiß was da passiert und man nur über das Interface kommuniziert.
/ #text(
    blue,
  )[Modellierer]: Der Beobachter des Modelles, auch die Umgebung genannt. Vorstellbar als Person die das Modell betrachtet. Diese Person soll irgendwann selber als Prozess vorgestellt werden der mit dem Modell interagiert, also Abstraktion zu zwei Prozessen die miteinander interagieren.

#note[Diese Modellierungen sind nur graphisch und informell.]
