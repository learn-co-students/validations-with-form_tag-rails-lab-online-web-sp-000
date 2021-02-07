class PostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :edit, :destroy]

  
  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.valid?
      @post.update(post_params)
      redirect_to post_path(@post)
    else
      redirect :edit
    end 
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
  
  def set_post 
    @post = Post.find(params[:id])
  end 

end
