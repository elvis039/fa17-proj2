class PlaylistsController < ApplicationController
	def create
		lst = Playlist.new
		#CREATE PRIVATE PARAM GETTER METHOD?
		lst.name = params[:playlist][:name]
		lst.user_id = current_user.id 	#not good practice to say current_user here? Should pass in as param. Techinally ok?
		lst.save!
		redirect_to users_show_path(current_user)
	end

	def add
		lst = Playlist.find(params[:movie][:playlist_ids])
		lst.movies << Movie.find(params[:id])
		lst.save!
		redirect_to users_show_path(current_user)
	end

	def delete
		puts params
		lst = Playlist.find(params[:id])
		lst.delete
		redirect_to users_show_path(current_user)
	end

	def deleteMovie
		playlist = Playlist.find(params["playlist"])
		movie = Movie.find(params["movie"])
		playlist.movies.delete(movie)
		redirect_to users_show_path(current_user)
	end
end
