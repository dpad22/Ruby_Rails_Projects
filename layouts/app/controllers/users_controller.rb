class UsersController < ApplicationController
  def index
    @users = User.all
    render layout: "two_column"
  end

  def new
  end

  def create
    @user = User.create(userParams)
    redirect_to "/users"
  end

  def userParams
    params.require(:user).permit(:fname,:lname,:language)
  end

end
