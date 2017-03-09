class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def edit
  end

  def new
    @category = Category.new
    
  end

  def create
     @category = Category.new(category_params)
     if @category.save
     
      flash[:success] = "Your category has been saved"
    else
      render 'new'
     end
    
  end

  def show
  	@category = Category.find(params[:id])
  	@title = @category.name
  	@posts = @category.posts
  end

  def edit
     @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])

    if @category.update_attributes(category_params)
    
    redirect_to post_path, :notice => "Your category has been updated"

    else

    render 'edit'

    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:success] = "Category successfuly deleted!!"
    redirect_to request.referrer || root_url
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
