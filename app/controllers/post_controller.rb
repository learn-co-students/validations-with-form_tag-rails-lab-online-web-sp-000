class PostController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit, :destroy]
  
   def create 
     @post = Post.new 
     if @post.valid?
       @post.create(post_params)
       redirect_to post_path(@post)
     else
       render :new
   end 
   
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
      redirect_to post_path
    else
      redirect :edit
    end 
  end

private
    def set_post 
      @post = Post.find(params[:id])
    end 
    
      
  def post_params 
    params.require(:post).permit(:category, :content )
  end 

end
