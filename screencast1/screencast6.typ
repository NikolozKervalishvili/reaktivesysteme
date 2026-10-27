#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Übergang])

= Zustands Übergangs Systeme
#columns(2)[
  $
    "CS" eq.def #overline[pub]."CS"_1 \
    "CS"_1 eq.def #overline[coin]."CS"_2 \
    "CS"_2 eq.def "coffee"."CS" \
  $
  #colbreak()
  $
    "CM" eq.def "coin"."CM"_1 \
    "CM"_1 eq.def #overline[coffee]."CM" \
  $
]

Hier die Systeme getrennt dargestellt als Graphen und die Parallelisierung in der Mitte.

Es sollte hierbei 4 dieser Resktriktionen wie die gelb markierte geben.

#image("übergangssysteme.png")
