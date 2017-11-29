class MoviesController < ApplicationController
	def show
		require 'open-uri'
		api_key = '3802e4a0fdfbe45bf420d173bfa5b977'

		@obj = JSON.parse(open("https://api.themoviedb.org/3/movie/#{Movie.find(params[:id]).tmdb_id}?api_key=#{api_key}&language=en-US").read)
		@movie = Movie.find(params[:id])
	end

	def new
		require 'open-uri'
		api_key = '3802e4a0fdfbe45bf420d173bfa5b977'

		#ADD PRIVATE PARAMS METHOD FOR PROTECTION?
		@title = "&query=#{params[:movie][:title].sub(' ', '%20')}"
		@language = "&language=en-US"

		#ADD ABILITY TO USE YEAR AS SEARCH QUERY TOO?

		@results = JSON.parse(open("https://api.themoviedb.org/3/search/movie?api_key=#{api_key}#{@title}").read)['results'] #&page=1 #language
		render "new"
	end

	def create
		@movie = Movie.new
		puts params['id']
		@movie.title = params['title']
		@movie.tmdb_id = params['id']
		@movie.save
		redirect_to home_path
	end


end
