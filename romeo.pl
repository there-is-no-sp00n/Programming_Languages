parent(john, ann).
parent(jim, john).
parent(jim, keith).
parent(mary, ann).
parent(mary, sylvia).
parent(brian, sylvia).
parent(mary, nick).
parent(john, nick).

male(keith).
male(jim).
male(brian).

female(sylvia).
female(ann).

sibling(X,Y):- parent(Z, X), parent(Z, Y), X\=Y.

halfsister(X,Y):- female(X), parent(Z,X), parent(Z,Y), parent(W,X), parent(T, Y), Z\=W, Z\=T, W\=T.

uncle(X,Y):- male(X), \+parent(X,Y), parent(Z,Y), sibling(X,Z).

plane(p123, boeing747, 8).
plane(p222, boeing747, 9).
plane(p323, boeing747, 3).

flight(f407, toronto, paris, p123).
flight(f333, newyork, paris, p222).
flight(f666, newyork, paris, p323).

passenger(s456_234_987, anna, toronto, 26).
passenger(s_123_333_232, jojo, miami, 22).
passenger(s_111_111_111, paul, dallas, 21).

booked(s456_234_987, f407, jan17, 500).
booked(s333_333_333, f333, jan17, 1000).
booked(s666_666_666, f666, jan17, 1500).
booked(s_123_333_232, f407, jan17, 2000).
booked(s_111_111_111, f407, jan17, 2200).


modelYage(X):-plane(X, Y, Z), write('MODEL: '), write(Y), nl,nl, write('AGE: '), write(Z).

pnumYage(X):-plane(Y, X, Z), write('PNUM: '), write(Y), nl, nl, write('AGE: '), write(Z).

daflightnum(X,Y):-flight(A, X, Y, B), write('FLIGHT: '), write(A).

flightYprice(X,Y,Z):-flight(A, X, Y, B), booked(C, A, Z, D), write('FLIGHT: '), write(A), nl,nl, write('PRICE: '), write(D).

nameYseatNo(X, Y):-booked(A, X, Y, E), passenger(A, D, G, H), write('NAME: '), write(D), nl,nl, write('SIN: '), write(A).
