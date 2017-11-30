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

	end

	def delete
		lst = Playlist.find(params[:id])
		redirect_to users_show_path(current_user)
	end
end
