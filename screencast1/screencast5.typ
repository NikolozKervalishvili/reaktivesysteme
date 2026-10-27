#import "@local/notes:0.1.0": *
#show: template.with(title: [Reaktive Systeme Screencast 1 \ Umbenennung])

/ Modellierwunsch: Es wäre nützlich, Varianten (bzw. Instanzen) von bereits modellierten Prozessen einfach erzeugen zu können.

#definition[\
  #columns(2)[

    #underline[wenn] $P in "Prozess"$ \
    und $f : "Aktion" -> "Aktion"$ \
    mit $forall overline(a) in "Aktion" : f(overline(a)) = overline(f(a))$ \
    \
    #underline("dann") $P[f] in "Prozess"$

    #colbreak()

    / $P[f]$: verhält sich genau wie $P$, außer das Aktionen nach außen hin gemäß f möglicherweise unter einem anderen Namen sichtbar sind.
  ]]

== Beispiel

$
  "VM" & eq.def "coin". #overline[item]."VM" \
  "TM" & eq.def "VM" med [frac("tea", "item", style: "skewed")]
$

Die Vending Machine nimmt ein Coin und gibt ein Item zurück. Wir benutzen diese Vorlage, um eine Teemachine zu bauen.

$
  "VM" med [frac("tea", "item", style: "skewed")] eq.delta f : cases("item" |-> "tea", #overline[item] |-> #overline[tea], "name" |-> "name", "sonst")
$

Dieser Homomorphismus bedeutet: Ersetze Item durch Tea, analog die Co-Namen, lasse den Rest. Dies bedeutet auch allerdings, dass $"CM" != "VM" med [frac("coffee", "item", style: "skewed")]$, da sozusagen die Umbenennung eine weitere Operation ist, die angewendet wird, nicht dass es den ursprünglichen Namen nie gab und daher kann anstatt Item da Coffee stehen, was der Definitino von CM entsprechen würde.

/ Als Beispiel: Zwei Schichten gegen eine Schicht, da die zweite Schicht die drüber gelegte Operation ist.

#image("umbennenung.png", width: 50%)

