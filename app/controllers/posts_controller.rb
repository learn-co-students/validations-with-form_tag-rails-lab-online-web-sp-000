class PostsController < ApplicationController
  before_action :get_post, only: %i[show edit update]

  def show; end
  def edit; end
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.valid?
      @post.save

      redirect_to @post
    else
      render :'/posts/new'
    end
  end

  def update
    @post.update(post_params)

    if @post.valid?
      @post.save
      redirect_to @post
    else
      render :'/posts/edit'
    end
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end
end
