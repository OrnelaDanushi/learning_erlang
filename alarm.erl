-module(alarm).
% -export() ..

start(Time, Alarm) ->
  spawn(alarm, alarm, [self(), Time, Alarm]).

cancel(Timer) ->
  Timer ! {self()}.
