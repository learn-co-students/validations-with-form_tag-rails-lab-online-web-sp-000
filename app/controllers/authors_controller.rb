require 'pry'

class AuthorsController < ApplicationController

  def new
    @author = Author.new(author_params)
  end

  def create

    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :new
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def edit
  end

  def update
    @author.update(author_params)
    if @author.valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:email, :name, :phone_number)
  end
end
