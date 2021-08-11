class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@review)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end

# 1. récuperer l'ensemble des instances de rating pour chaque resto
# 2. Transformer ces ratings dans un array
# 3. faire la moyenne à chaque
