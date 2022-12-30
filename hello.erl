% filename hello.erl
% hello world program
-module(helloworld).

% /0 is the arity = how many arguments it takes
-export([start/0]).

start() ->
    %io:fwrite("Hello, world!\n").
    io:format("Hello, Ornela!\n").
