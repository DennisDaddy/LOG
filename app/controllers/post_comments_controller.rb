class PostCommentsController < ApplicationController
 
  def create
    @post_comment = PostComment.new(post_comment_params)
   
      if @post_comment.save
        flash[:success] = "Comment was successfully !"
          redirect_to root_url
        
      else
        flash[:danger] = "error craeting comment"
       redirect_to root_url
      end
    end
  

  

  

  private
   
    # Never trust parameters from the scary internet, only allow the white list through.
    def post_comment_params
      params.require(:post_comment).permit(:name, :email, :body, :post_id)
    end
end