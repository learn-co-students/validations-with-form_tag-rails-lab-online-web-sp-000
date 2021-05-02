class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.assign_attributes(post_params)
    if @post.invalid?
      render :edit
    else
     @post.update(post_params)
     redirect_to post_path(@post)
     end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
