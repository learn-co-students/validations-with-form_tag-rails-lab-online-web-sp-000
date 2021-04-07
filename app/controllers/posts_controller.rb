class PostsController < ApplicationController

  def new
  end

  def create #update
    puts "entering create function"
    # puts post_params
    # puts request
    
    # @post = Post.find_by(title: params[:title])
    @post = Post.find("1")
    puts @post.title


    if @post == nil
      @post = Post.new
      puts @post
      render :edit
    end

    @post.update(:title => params["title"], :category => params["category"], :content => params["content"])
    if @post.valid?
      puts "post valid"
      @post.save
      redirect_to post_path(@post)
    else
      puts "post invalid"
      render :edit
    end
  end
  
  def show
    puts "show function"
    puts params
    @post = Post.find(params[:id])
  end

  def edit
    puts "edit function"
    puts params
    @post = Post.find(params[:id])
  end

  def update
    puts "entering update function"
    @post = Post.find(params[:id])

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
end
