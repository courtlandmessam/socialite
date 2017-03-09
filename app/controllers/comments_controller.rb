class CommentsController < ApplicationController
  before_action :set_venue

  def create
    @comment = @venue.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = "You commented the hell out of that post!"
      redirect_to :back
    else
      flash[:alert] = "Check the comment form, something went horribly wrong."
      render root_path
    end
  end

  def destroy
    @comment = @venue.comments.find(params[:id])

    @comment.destroy
    flash[:success] = "Comment deleted :("
    redirect_to root_path
  end


  def upvote
    @comment = Comment.find(params[:id])
    @commment.liked_by current_user
    redirect_to venues_path
  end 
  
  def reset
    @comment = Comment.find(params[:id])
    @comment.unvote_by current_user
    redirect_to venues_path
  end

  def downvote
    @comment = Comment.find(params[:id])
    @comment.downvote_from current_user
    redirect_to venues_path
  end 

  private

  def comment_params
    params.require(:comment).permit(:content, :image)
  end

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end
end
