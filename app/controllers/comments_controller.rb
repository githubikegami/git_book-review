class CommentsController < ApplicationController
  def create
    @comment = Comment.create(text: comment_params[:text], bookreview_id: comment_params[:bookreview_id], user_id: current_user.id)
    redirect_to "/bookreviews/#{@comment.bookreview.id}"
  end

  private
  def comment_params
    params.permit(:text, :bookreview_id)
  end  
  
end
