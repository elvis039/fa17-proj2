class ReviewsController < ApplicationController
  def create
  	movie = Movie.find(params[:id])
  	review = Review.new
  	review.user = current_user
  	review.movie = movie
  	review.update(review_params)
  	puts "****************************************************************"
  	puts review
  	review.save!
  	redirect_to movie_path(movie)
  end

  private
  def review_params
  	params.require(:review).permit(:comment, :rating)
  end
end
