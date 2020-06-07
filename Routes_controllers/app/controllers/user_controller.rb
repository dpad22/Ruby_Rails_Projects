class UserController < ApplicationController

  def index
    render plain: 'What do you want me to say'
  end

  def hello
    render plain: 'Hello Coding Dojo'
  end

  def sayHello
    render plain: 'Saying Hello'
  end

  def sayHelloJoe
    render plain: "Saying Hello Joe"
  end

  def sayHelloMichael
    redirect_to "say/Hello/Joe"
  end
  
  def times 
    session[:count] ||= 0
    render plain: "You have visited the route #{session[:count]+=1} time(s)"
  end

  def timesRestart
    session[:count] = nil
    render text: "Destroy the session!"
  end
end
