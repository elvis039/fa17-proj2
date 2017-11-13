class ChangeImdbToString < ActiveRecord::Migration[5.1]
  def change
  	change_column :movies, :imdb_id, :string
  end
end
