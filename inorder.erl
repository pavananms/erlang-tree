-module(inorder).
-export([inorder/1]).
 


inorder([N1,N2,"+"]) ->
    [inorder(N1),"+",inorder(N2)];

inorder([N1,N2,"-"]) ->
    [inorder(N1),"-",inorder(N2)];

inorder(N) ->
    N.
 

