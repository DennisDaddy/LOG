class PostsController < ApplicationController
  def index
    
    @posts = Post.all
  end

  def new
    @post = Post.new
    @category = Category.all
  end

  def create
     @post = Post.new(post_params)
     if @post.save
       flash[:success] = "Your post has been saved"
      redirect_to posts_path
    else
      render 'new'
     end
    
  end

  def edit
     @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
    
    redirect_to post_path, :notice => "Your post has been updated"

    else

    render 'edit'

    end
  end

  

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new(:post => @post)

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:success] = "post deleted"
    redirect_to posts_path
  end

   private

  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end
end
