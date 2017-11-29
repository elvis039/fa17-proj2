class Movie < ApplicationRecord
	has_many :reviews
	validates :title, presence: true
	validates :tmdb_id, presence: true, uniqueness: true

end
