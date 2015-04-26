%% @author Augustus Aldrin
%% @doc @todo Add description to temperatureconverter.


-module(temperatureconverter).

%% ====================================================================
%% API functions
%% ====================================================================
-export([convertToCelsius/1, convertToFarenheit/1, controllerActor/2]).



%% ====================================================================
%% Internal functions
%% ====================================================================

convertToCelsius(N) ->
	io:format("~w Degrees Farenheit ~n",[N]),
	io:format("~w Degrees Celsius ~n", [(N - 32) * 5/9]).

convertToFarenheit(N) ->
	io:format("~w Degrees Celsius ~n",[N]),
	io:format("~w Degrees Farenheit ~n", [(N * 9/5) + 32]).

controllerActor(Value1, Value2) ->
	spawn(temperatureconverter, convertToCelsius(Value1)),
	spawn(temperatureconverter, convertToFarenheit(Value2)).