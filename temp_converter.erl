% write a server to convert temperatures from Celsius degrees to Fahrenheit degrees and vice versa,
% using the formula F = 1.8C + 32
% the server receives requests of the form (Pid, cs, C) or (Pid, ft, F) and
% replies to Pid by sending messages in analogous format
% the server can be stopped by sending the message stop
% all the other messages are ignored
% spawn a copy of the server, send it some temperatures to convert, check out the results and
% stop the server

-module(ex1).
-export([convert/0]).

convert() ->
  receive
    {Pid, cs, C} -> Pid ! {self(), ft, (1.8 * C) + 32}, convert();
    {Pid, ft, F} -> Pid ! {self(), cs, (F - 32) / 1.8}, convert();
    stop -> true;
    _ -> convert();
    end.

% 1> c(ex1).                                 {ok,ex1}
% 2> Conv = spawn(ex1, convert, []).         <0.84.0>
% 3> Conv ! {self(), cs, 23}.                {<0.77.0>,cs,23}
% 4> receive
% 4>    {Conv,ft,F} -> io:format("23 celsius = ~p fahrenheit~n", [F])
% 4> end.                                    23 celsius = 73.4 fahrenheit
% 5> Conv ! {self(),ft,74}.                  {<0.77.0>,ft,74}
% 6> receive
% 6>    {Conv,cs,C} -> io:format("74 fahrenheit = ~p celsius~n", [C])
% 6> end.                                    fahrenheit = 23.333333333333332 celsius
% 7> Conv ! stop.                            stop
