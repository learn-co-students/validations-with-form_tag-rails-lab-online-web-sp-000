class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]

  def show

  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)

    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      #re-render the :new template WITHOUT throwing
      # away the invalid @author
      render :new
    end
  end

  def edit

  end

  def update

  end

  private

  def set_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
