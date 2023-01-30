# posts_counter
class PostsController < ApplicationController
  def index
    author_id = params[:id]
    @posts = Post.where(author_id == :AuthorId)
  end

  def show
    puts 'Under construction...!'
  end
end
