zatrudnienie(anna, nowak, zelmer, duza_firma, 1000).
zatrudnienie(adam, mickiewicz, kremoweczka, srednia_firma, 5000).
zatrudnienie(juliusz, slowacki, kremoweczka, srednia_firma, 1200).
zatrudnienie(cyprian, norwid, bbm, mala_firma, 900).

zadowolona(X):-
    zatrudnienie(X,_,_,_,Y),
    Y>2500.
