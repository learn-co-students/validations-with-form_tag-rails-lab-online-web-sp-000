class AuthorController < ApplicationController
  before_action :set_post, only: [:show, :update, :edit, :destroy]


def index 
  @authors - Author.all 
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
end 

def destroy 
end 

def show 
end 

private 
  def set_post 
    @author = Author.find(params[:id])
  end 
end
