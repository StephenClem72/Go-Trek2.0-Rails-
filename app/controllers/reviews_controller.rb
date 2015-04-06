class ReviewsController < ApplicationController

  def create
    @Trail = Trail.find(params[:trail_id])
    @review = @trail.reviews.create(review_params)
    respond_to do |format|
      if @answer.save
        redirect_to @trail
      end
    end
  end

  private

  def review_params
    params.require(:answer).permit(:title, :content)
  end

end
