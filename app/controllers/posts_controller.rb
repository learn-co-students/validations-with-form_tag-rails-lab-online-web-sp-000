class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    @post.valid? ? redirect_to(post_path(@post)) : render(:edit)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    @post.valid? ? redirect_to(post_path(@post)) : render(:new)
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
