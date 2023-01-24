% write a function view that displays the content of the mailbox but makes
% all messages remain available in the mailbox afterbox

-module(ex3).
-export([view/0, send/1]).

send([]) -> true;
send([A|L]) -> send(L),self() ! A.

view() -> view([]);
view(L) -> 
  receive
    Any -> io:format("view ~p~n",[Any]),view([Any|L])
  after 0 -> send(L)
  end.

% 1> c(ex3).              {ok,ex3}
% 2> ex3:send([3,2,1]).   3
% 3> ex3:view().          view 1, view 2, view 3, 3
% 4> ex3:view().          view 1, view 2, view 3, 3
% 5> flush().             Shell got 1, Shell got 2, Shell got 3, ok
% 6> ex3:view().          true
