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

app(nil,Xs,Xs).
app(list(X,X1s),Ys,list(X,X2s)):- app(X1s,Ys,X2s).

präfix(Xs,Ys) :- app(Xs,H1s,Ys).%, H1s==nil.

infix(Xs,Ys) :- präfix(Xs,Ys).
infix(Xs,list(X,Ys)) :- infix(Xs,Ys).%präfix(Xs,Ys).

infix2(Xs,Ys) :- app(_,Xs,Hs), app(Hs,_,Ys).

postfix(Xs,Ys):-app(H1s,Xs,Ys).
memb(X,list(X,Ys)).
memb(X,list(_,Ys)) :-  memb(X,Ys).

lastelement(X,list(X,nil)).
lastelement(X,list(X,Ys)) :- lastelement(X,Ys).

%revers(Xs,Ys) : Ys ist Xs gespiegelt
revers(nil,nil).
revers(list(X,Xs),Ys) :- revers(Xs,Hs), app(Hs,list(X,nil),Ys).



%Aufgabe 2
%a) Ein Binärbaum hat ein Datenelement X einen linken Nachfolger Lb und einen rechten Rb.

%b)
%binbaum(baum(X,Lb,Rb)) : binbaum ist ein baum wenn A ein Datenelement und Lb und Rb Teilbäume sind.

binbaum(nil).
binbaum(baum(X,Lb,Rb)) :- binbaum(Lb), binbaum(Rb).

%c)
root(baum(Y,Lb,Rb),Y) :- binbaum(Lb), binbaum(Rb).
left(baum(X,Lb,Rb),Lb) :- binbaum(Lb), binbaum(Rb).
right(baum(X,Lb,Rb),Rb) :- binbaum(Rb).
construct(X,Lb,Rb,baum(X,Lb,Rb)).
knotenanz(nil,o).
knotenanz(baum(X,Lb,Rb),s(N)) :- knotenanz(Lb,H1),knotenanz(Rb,H2),add(H1,H2,N).
add(o,Y,Y).
add(s(X),Y,s(E)):- add(X,Y,E).
