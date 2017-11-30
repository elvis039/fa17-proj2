class AddLikeToReviews < ActiveRecord::Migration[5.1]
  def change
  	add_column :reviews, :likes, :integer
  end
end
