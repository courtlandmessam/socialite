class CommentsController < ApplicationController
  before_action :set_venue

  def create
    @comment = @venue.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      flash[:success] = "You commented the hell out of that post!"
      redirect_to :back
    else
      flash[:alert] = "You forgot to add a photo..."
      redirect_to root_path
    end
  end

  def destroy
    @comment = @venue.comments.find(params[:id])

    @comment.destroy
    flash[:success] = "Comment deleted :("
    redirect_to root_path
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :image)
  end

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end
end
