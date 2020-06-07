Rails.application.routes.draw do

get "" => "user#index"

get "hello" => "user#hello"

get "say/hello" => "user#sayHello"

get "say/hello/joe" => "user#sayHelloJoe"

get "say/hello/michael" => "user#sayHelloJoe"

get "times" => "user#times"

get "times/restart" => "user#timesRestart"

end
