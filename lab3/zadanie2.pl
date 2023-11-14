rzeczownik(ala).
rzeczownik(jan).
rzeczownik(kot).
rzeczownik(pies).
rzeczownik(rower).
rzeczownik(slonce).


czasownik(ma).
czasownik(jest).
czasownik(lubi).

przymiotnik(mily).
przymiotnik(zly).
przymiotnik(maly).
przymiotnik(duzy).
przymiotnik(ladny).
przymiotnik(brzydki).

zdanie(A,B,C):-
    rzeczownik(A),
    czasownik(B),
    rzeczownik(C),
    write('zdanie poprawne'), nl,
    write(A), write(' '), write(B), write(' '), write(C).

zdanie(A,B,C,D,E):-
    przymiotnik(A),
    rzeczownik(B),
    czasownik(C),
    przymiotnik(D),
    rzeczownik(E),
    write('zdanie poprawne'), nl,
    write(A), write(' '), write(B), write(' '), write(C), write(' '), write(D), write(' '), write(E).

