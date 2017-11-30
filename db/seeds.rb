# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'uri'
require 'open-uri'
api_key = '3802e4a0fdfbe45bf420d173bfa5b977'


	for i in 2..100
		trigger = true
		begin 
		@obj = JSON.parse(open("https://api.themoviedb.org/3/movie/#{i}?api_key=#{api_key}&language=en-US").read)
		rescue OpenURI::HTTPError
			puts i
			trigger = false
		end
		if trigger then
			Movie.create! title: @obj['title'], tmdb_id: @obj['id']	
		end
	end



User.create! username: 'Pumbaya', email: 'moayerp@berkeley.edu', password: 'rubydecal'