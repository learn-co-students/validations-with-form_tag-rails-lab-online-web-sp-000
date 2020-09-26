class AuthorsController < ApplicationController
  before_action :set_author!, only: [:show, :edit, :update]

  def new
    @form_obj = Author.new
  end

  def show
  end

  def edit
  end

  def create
    @form_obj = Author.new(author_params)
    if @form_obj.valid?
      @form_obj.save
      redirect_to author_path(@form_obj)
    else
      render :new
    end
  end

  def update
    if @form_obj.update(author_params)
      redirect_to author_path(@form_obj)
    else
      render :edit
    end

  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end

  def set_author!
    @form_obj = Author.find(params[:id])
  end

end
