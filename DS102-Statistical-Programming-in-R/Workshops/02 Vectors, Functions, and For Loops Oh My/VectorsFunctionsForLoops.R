lollipopRadius = c(2, 4, 6, 8, 10)

RtoC = function(lollipop){ (2 * pi * lollipop) }

for (lollipop in lollipopRadius){
  circ = RtoC(lollipop)
  print(circ)
}

for (lollipop in lollipopRadius){
  circ = RtoC(lollipop)
  cat(lollipop, "radius =", circ, " circumference\n ")
}
