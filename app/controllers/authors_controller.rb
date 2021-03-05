class AuthorsController < ApplicationController
  def show
    set_author!
  end

  def new
    @author = Author.new(author_params)
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def edit
    set_author!
  end

  def update
    set_author!
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author!
    @author = Author.find_by(params[:id])
  end
end
