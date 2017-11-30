class Playlist < ApplicationRecord
	has_and_belongs_to_many :movies
	belongs_to :users
end
