class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def create
    @post = Post.create(post_params)

    redirect_to post_path(@post)
  end

  def update
    
    if @form_obj.update(post_params)
      # @form_obj.save
      redirect_to post_path(@form_obj)
    else
      render :edit
    end

  end

  
  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @form_obj = Post.find(params[:id])
  end

end
