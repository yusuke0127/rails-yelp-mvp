class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # creating an instance of review using the data recieve from the form
    @review = Review.new(review_params)
    # searching for the associated restaurant using the id
    @restaurant = Restaurant.find(params[:restaurant_id])
    # associating the restaurant to the review
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
