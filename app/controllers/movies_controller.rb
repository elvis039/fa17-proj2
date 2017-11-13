class MoviesController < ApplicationController
	def show
		require 'open-uri'
		api_key = '3802e4a0fdfbe45bf420d173bfa5b977'

		@obj = JSON.parse(open("https://api.themoviedb.org/3/movie/#{Movie.find(params[:id]).tmdb_id}?api_key=#{api_key}&language=en-US").read)
		@movie = Movie.find(params[:id])
	end

	def create
		#to be implemented
	end
end
