class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render layout: "three_column"
  end

  def new
  end

  def create
    @post = Post.create(postParams)
    @user = User.all
    redirect_to "/posts"
  end

  def postParams
    params.require(:post).permit(:title,:content,:user_id)
  end
end
