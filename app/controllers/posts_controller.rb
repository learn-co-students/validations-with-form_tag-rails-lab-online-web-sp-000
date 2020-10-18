class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end
  
  def create
    @post = post.new(post_params)

    if post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  
  def edit
    @post = Post.find(params[:id])
  end

  def update
    3.times {puts "" }
    puts params
    3.times {puts "" }
    @post = Post.find(params[:id])
    @post.update(post_params)

    if @post.valid?
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  private

  def post_params
    params.permit(:title, :category, :content)
  end
end
