class UsersController < ApplicationController
  def index
    @users = User.all
    
  end

  def new
  end

  def create
    @user = User.create(name: params[:name])
    puts @user
    redirect_to '/users'
  end

  def total
    render plain: "Total User count: #{User.ids.last}"
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    render json: User.find(params[:id])
  end

end
