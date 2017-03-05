class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def edit
  end

  def new
  end

  def show
  	@category = Category.find(params[:id])
  end
end
