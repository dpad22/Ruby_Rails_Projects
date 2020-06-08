class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def edit
  end

  def create
    Dojo.create(dojoParams)
    redirect_to '/dojos'
  end

  def show
  end

  def update
  end

  def delete
  end

  def dojoParams
    params.require(:dojo).permit(:name,:address,:city,:state)
  end
end
