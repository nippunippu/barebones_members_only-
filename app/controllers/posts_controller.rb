class PostsController < ApplicationController
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path
    end
  end

  def index
    @post = Post.new
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:author, :post)
  end
end

