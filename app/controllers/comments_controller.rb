class CommentsController < ApplicationController

	def create
     @comment = Comment.new
     if @comment.save
     	flash[:success] = "comment successfully updated!"
      redirect_to posts_path
    else
    	flash[:danger] = "Comment not created!"
      redirect_to posts_path
     end
    
  end

  
end