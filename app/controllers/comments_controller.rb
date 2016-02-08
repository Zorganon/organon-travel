class CommentsController < ApplicationController
  before_filter :authenticate_user!
  def create
    @trip = Trip.find(params[:trip_id])
    @comment = @trip.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @trip, notice: 'Review was created successfully.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { redirect_to @trip, alert: 'Review was not saved successfully' }
        format.json { render json: @comment.errors, status: :uprocessable_entity }
      end
    end
  end
  
  def destroy
    @comment = Commend.find(params[:id])
    trip = @comment.trip
    @comment.destroy
    redirect_to trip
  end
  
  private
  def comment_params
    params.require(:comment).permit(:user_id, :body)
  end
  
end
