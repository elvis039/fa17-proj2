class Review < ApplicationRecord
	belongs_to :movie, optional: false
	belongs_to :user, optional: false
	validates :rating, presence: true
end
