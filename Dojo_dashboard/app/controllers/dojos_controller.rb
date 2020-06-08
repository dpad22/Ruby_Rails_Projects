class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
  end

  def new
  end

  def edit
    @dojo = Dojo.find(params[:id])
  end

  def create
    Dojo.create(dojoParams)
    redirect_to dojos_url
  end

  def show
    @dojo = Dojo.find(params[:id])
  end

  def update
    dojo = Dojo.find(params[:id])
    dojo.name = dojoParams[:name]
    dojo.address = dojoParams[:address]
    dojo.city = dojoParams[:city]
    dojo.state = dojoParams[:state]
    dojo.save
    redirect_to showDojo_url(id: params[:id])
  end

  def destroy
    dojo = Dojo.find(params[:id])
    dojo.destroy
    redirect_to dojos_url
  end

  def dojoParams
    params.require(:dojo).permit(:name,:address,:city,:state)
  end
end
