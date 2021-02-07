class AuthorController < ApplicationController
    before_action :set_author, only: [:show, :update, :edit, :destroy]

  
def index 
  @authors - Author.all 
end 
  
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
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

  private

  def author_params
    params.require(:author).permit(:email, :phone_number)
  end
  
  def set_author 
    @author = Author.find(params[:id])
  end 
end
