% Autor:
% Datum: 31.10.2013

%Aufgabe 1
%a)
%liste(list(A,Xs)) : list ist eine liste wenn A ein Datenelement und Xs eine Teilliste ist.
liste(nil).
liste(list(A,Xs)) :- liste(Xs).

%b)
%anz(list(A,Xs),s(N)) : N ist die Anzahl der Listenelemente der Liste list(A,Xs), wobei A ein Datenelement und Xs eine Teilliste ist.
anz(nil,o).
anz(list(A,Xs),s(N)) :- liste(Xs), anz(Xs,N).


%Aufgabe 2
%a) Ein Binärbaum hat ein Datenelement X einen linken Nachfolger Ls und einen rechten Rs.
%b)
%binbaum(baum(X,Ls,Rs)) : binbaum ist ein baum wenn A ein Datenelement und Ls und Rs Teilbäume sind.
binbaum(nil).
binbaum(baum(X,Ls,Rs)) :- binbaum(Ls), binbaum(Rs).