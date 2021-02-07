class PostController < ApplicationController
  before_action 
    set_post, only: [:show, :update, :edit, :destroy]
  
   def create 
   end 
   
    def show
    @post = Post.find(params[:id])
    end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    @post.update(post_params)

    redirect_to post_path(@post)
  end

    def set_post 
      @post = Post.find(params[:id])
    end 
end
