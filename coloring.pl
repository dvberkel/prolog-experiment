different(red, green).
different(red, blue).
different(green, blue).

different(green, red).
different(blue, red).
different(blue, green).

coloring(Friesland, Groningen, Overijssel, Drenthe, Gelderland, Utrecht, NoordHolland) :-
  different(Friesland, Groningen),
  different(Friesland, Overijssel),
  different(Groningen, Overijssel),
  different(Overijssel, Drenthe),
  different(Drenthe, Gelderland),
  different(Gelderland, Utrecht),
  different(Utrecht, NoordHolland).
