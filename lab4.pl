%zadanie 2

pisz_liste([G|[]]):- write(G).
pisz_liste([G|O]):-
           write(G),nl,
           pisz_liste(O).

%zadanie 3

nalezy(E,[E|_]):-!.
nalezy(E,[_|Tail]):-
    nalezy(E,Tail).


%zadanie 4

dlugosc(0,[]).
dlugosc(X,[_|Tail]):-
    dlugosc(Xt,Tail),
    X is Xt+1.

%zadanie 5

polacz([],[],[]).
polacz([],X,X).
polacz([H1|T1],L2,[H1,L3]):-
    polacz(T1,L2,L3).

%zadanie 6

dodaj(X,[],[X]).

dodaj(X,[H|T1],[H|T2]):-
    dodaj(X,T1,T2).

%zadanie 7

usun(_,[],[]):-!.
usun(X,[X|T],T).
usun(X,[H|T1],[H|T2]):-
     usun(X,T1,T2).

%zadanie 8

ostatni(X,[X|[]]):-write(X).
ostatni(X,[_|T]):-ostatni(X,T).

%zadanie 9

poczatek([],_).
poczatek([H1|T1],[H1|T2]):-
    poczatek(T1,T2).

%zadanie 10

dopasuj([],_,[]).
%dopasuj([H,T],
