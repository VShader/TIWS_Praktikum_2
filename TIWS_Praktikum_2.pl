% Autor:
% Datum: 31.10.2013

%Aufgabe 1
%a)
liste(nil).
liste(list(A,Xs)) :- liste(Xs).

%b)
anz(nil,o).
anz(list(A,Xs),s(N)) :- liste(Xs), anz(Xs,N).
