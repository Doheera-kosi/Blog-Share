class PostsController < ApplicationController
  def index
    @user = User.includes(:posts).find(params[:user_id])
    # @posts = Post.where(user_id: @user.id)
  end

  def show
    @user = User.find(params[:user_id])
    @posts = Post.where(params[:id])
    # @comments = Comment.where(post_id: params[:id])
    @post = Post.find(params[:id])
  end
end
