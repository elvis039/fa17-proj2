class Movie < ApplicationRecord
	has_many :reviews
	has_and_belongs_to_many :playlists
	validates :title, presence: true
	validates :tmdb_id, presence: true, uniqueness: true

end
