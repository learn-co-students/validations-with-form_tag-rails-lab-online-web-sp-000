class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)

    if @post.valid?
      @post.save
      redirect_to @post
      # redirect_to post_path(@post)
    else
      render :new
    end

  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)

    if @post.valid?
      redirect_to @post
      # redirect_to post_path(@post)
    else
      render :edit
    end

  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
