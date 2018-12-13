class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]
  before_action :form_title, only: [:new, :edit]

  def show
  end

  def new
    @author = Author.new
    render :new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      form_title
      render :new
    end
  end

  def edit
    render :new
  end

  def update
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      form_title(@author.name)
      render :new
    end
  end

  private
  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def form_title(author_name: nil)
    @form_title = author_name ? "Editing #{author_name}" : "Create an Author"
  end
end
