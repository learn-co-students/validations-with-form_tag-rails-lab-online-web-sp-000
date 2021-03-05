class AuthorsController < ApplicationController
  before_action :get_author, only: %i[show edit update]

  def show; end
  def edit; end
  def new
    @author = Author.new
  end

  def create
    @author = Author.create(author_params)

    if @author.valid?
      @author.save

      redirect_to @author
    else
      render :'authors/new'
    end
  end

  def update
    @author.update(author_params)

    if @author.valid?
      @author.save

      redirect_to @author
    else
      render :'authors/edit'
    end
  end

  private

  def get_author
    @author = Author.find(params[:id])
  end

  def author_params
    params.permit(:name, :email, :phone_number)
  end
end
