class AuthorsController < ApplicationController
    before_action :set_author, only: [:show, :update, :edit, :destroy]

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(params[:author])
    if @author.valid?
      @author.save 
    redirect_to author_path
    else 
      render :new
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
  
  def set_author 
    @author = Author.find(params[:id])
  end 
end
