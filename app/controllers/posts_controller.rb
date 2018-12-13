class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  before_action :form_title, only: [:new, :edit]

  def show
  end

  def new
    @form_name = "Create a Post"
    render :edit
  end

  def create
    # this won't be tested, so I'm not writing it
  end

  def edit
    @form_name = "Editing #{@post.title}"
    render :edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      form_title
      render :edit
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:title, :category, :content)
  end

  def form_title(post_title: nil)
    @form_title = post_title ? "Editing #{post_title}" : "Create an Author"
  end
end
