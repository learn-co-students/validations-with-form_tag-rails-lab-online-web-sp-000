class AuthorController < ApplicationController
  before_action :set_author, only: [:show, :update, :edit, :destroy]

def create 
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
  def set_author 
    @author = Author.find(params[:id])
  end 
end
