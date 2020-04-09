class PostsController < ApplicationController
  before_action :set_params!, only: [:show, :edit, :update]
  
  def show
  end

  def new 
  end 

  def edit
  end

  def update
    set_params!.attributes=(post_params)
    if @post.valid?
      @post.save
    redirect_to post_path(@post)
    else 
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end

  def set_params!
    @post = Post.find(params[:id])
  end 

end
