class ReviewsController < ApplicationController
  def create
  	movie = Movie.find(params[:id])
  	review = Review.new
  	review.user = current_user
  	review.movie = movie
  	review.update(review_params)
  	review.save!
  	redirect_to movie_path(movie)
  end

  def delete
    review = Review.find(params[:id])
    review.delete
    redirect_to movie_path(review.movie)
  end

  def like
    review = Review.find(params[:id])
    review.likes++
    review.save
    redirect_to movie_path(review.movie)
  end

  def unlike
    review = Review.find(params[:id])
    review.likes--
    review.save
    redirect_to movie_path(review.movie)
  end

  private
  def review_params
  	params.require(:review).permit(:comment, :rating)
  end
end
