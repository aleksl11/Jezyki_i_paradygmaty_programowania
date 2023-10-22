osoba(asia, sport, 18).
osoba(basia, filmy, 20).
osoba(kasia, gry, 19).
osoba(gosia, ksiazki, 21).

starszy(X,Y):-
    osoba(X, _, A),
    osoba(Y, _, B),
    X\=Y,
    A>=B.


