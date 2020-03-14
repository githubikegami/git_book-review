class CommentsController < ApplicationController
  def create
    @comment = Comment.create(rate: comment_params[:rate],text: comment_params[:text],bookreview_id: comment_params[:bookreview_id], user_id: current_user.id)
    redirect_to "/bookreview/#{@comment.bookreview.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:rate,:text).merge(bookreview_id: params[:bookreview_id], user_id: current_user.id)
  end
end
