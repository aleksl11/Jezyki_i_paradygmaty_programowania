osoba(ola, mirek, agnieszka, kobieta, 22).
osoba(maks, artur, kasia, mezczyzna, 11).
osoba(natalia, dariusz, sabina, kobieta, 8).
osoba(maja, bartek, anna, kobieta, 2).
osoba(wojtek, bartek, anna, mezczyzna, 6).
osoba(agnieszka, kazik, ewa, kobieta, 42).
osoba(marcin, kazik, ewa, mezczyzna, 40).
osoba(artur, kazik, ewa, mezczyzna, 39).
osoba(iwona, kazik, ewa, kobieta, 36).
osoba(sabina, zdzislaw, zofia, kobieta, 46).
osoba(anna, zdzislaw, zofia, kobieta, 43).
osoba(mirek, zdzislaw, zofia, mezczyzna, 40).
osoba(daniel, zdzislaw, zofia, mezczyzna, 38).
osoba(ewa, stanislaw, emilia, kobieta, 69).
osoba(kazik, walenty, maria, mezczyzna, 69).
osoba(zofia, kamil, beata, kobieta, 64).
osoba(zdzislaw, rober, gabriela, mezczyzna, 65).

rodzenstwo(X,Y):-
     osoba(X,A,B,_,_),
     osoba(Y,A,B,_,_),
     X\=Y.

rodzic(X,Y):-
    osoba(Y,X,_,_,_);osoba(Y,_,X,_,_).

brat(X,Y):-
    rodzenstwo(X,Y),
    osoba(X,_,_,mezczyzna,_).
siostra(X,Y):-
    rodzenstwo(X,Y),
    osoba(X,_,_,kobieta,_).

wujek(X,Y):-
    brat(X,Z),
    rodzic(Z,Y).

ciocia(X,Y):-
    siostra(X,Z),
    rodzic(Z,Y).

kuzyn(X,Y):-
    rodzic(A,X),
    rodzic(B,Y),
    rodzenstwo(A,B),
    osoba(X,_,_,mezczyzna,_).

kuzynka(X,Y):-
    rodzic(A,X),
    rodzic(B,Y),
    rodzenstwo(A,B),
    osoba(X,_,_,kobieta,_).

