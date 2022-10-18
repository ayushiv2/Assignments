likes(john,flowers).
likes(john,mary).
likes(paul,mary).
likes(john,X):-likes(X,wine).
likes(kunal,wine).
kidnap(X,Y):-thief(X),likes(X,Y).
thief(john).
book(origin,author(dan,brown)).
owns(kunal,book(origin,author(dan,brown))).
density(X,Y):- pop(X,P),area(X,A),Y is P/A.
pop(india,500).
pop(thapar,1080).
pop(kanada,69).
area(india,5000).
area(thapar,5).
area(kanada,10000).

factorial(0,1).
factorial(A,F):-
    A>0,
    A1 is A-1,
    factorial(A1,F1),
    F is A*F1.

max(X,Y,X):-X>Y,!.
max(X,Y,Y).

person(X):-woman(X),!.
person(X):-man(X).
woman(grill).
man(kunal).
man(gaurav).

likes(kunal,chutyap):-fail.
likes(kunal,chutyap).

loop(0).
loop(N):-N>0,
    S is N-1,
    loop(S),
    writeln(N).


find_aukat:-
    writeln("kiski chiaye?"),
    read(Input),
    aukat(Input,Output),
    writeln(Output).

aukat(kunal,1).
aukat(gaurav,2).

fibo(N):-
    fibonaci(0,1,N).

fibonaci(X,Y,N):-
    N>0,
    writeln(Y),
    S is X+Y,
    N1 is N-1,
    fibonaci(Y,S,N1).

grandmother(X,Y):-
    female(X),
    parent(X,A),
    not(X=A),
    parent(A,Y).

female(bc).
parent(b,a).
parent(bc,b).


