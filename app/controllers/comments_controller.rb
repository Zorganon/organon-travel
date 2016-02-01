class CommentsController < ApplicationController
  def create
    @trip = Trip.find(params[:trip_id])
    @comment = @trip.comments.new(comment_params)
    @comment.user = current.user
    @comment.save
    redirect_to trip_path(@trip)
  end
  
  def destroy
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id,:body)
end
