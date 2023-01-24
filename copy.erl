% write a function copy that receives an integer n and if n is positive
% it prints n copies of n (one per line)

% write a function that receives a list of integers and spawn an instance
% of copy for each integer in the list

-module(ex2).
-export([copy/1,listCopy/1]).

copy(N) when N > 0 -> copy(N,N);
copy(_) -> true.

copy(N,M) when N > 0 -> io:format("~p~n",[M]),copy(N-1,M);
copy(_,_) -> true.

listCopy(L) -> [spawn(ex2,copy,[N]) || N <- L].

% 1> c(ex2).                          {ok,ex2}
% 2> ex2:listCopy(lists:seq(1,5)).    1,2,3,4,5,[<0.84.0>,<0.85.0>,<0.86.0>,<0.87.0>,<0.88.0>],2,3,4,5,3,4,5,4,5,5,3
