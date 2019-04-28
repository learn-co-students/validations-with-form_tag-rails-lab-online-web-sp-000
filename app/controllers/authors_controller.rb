class AuthorsController < ApplicationController
  before_action :find_author, only: [:edit, :update]
  
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

  def edit
    
  end
  
  def update
    if @author.update(author_params).valid?
      @author.save
      redirect_to author_path(@author)
    else
      render :edit
    end

  end

  private

  def author_params
    params.reqiure(:author).permit(:name, :email, :phone_number)
  end

  def find_author
    @author = Author.find(params[:id])
  end  
end