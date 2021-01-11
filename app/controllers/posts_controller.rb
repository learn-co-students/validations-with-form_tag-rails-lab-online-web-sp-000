class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
    redirect_to post_path(@post)
  end

  def edit
  end

  def update
    @post.update(post_params)
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

  def set_post!
    @post = Post.find(params[:id])
  end
end
