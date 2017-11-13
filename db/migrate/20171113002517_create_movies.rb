class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :tmdb_id
      t.integer :imdb_id

      t.timestamps
    end
  end
end
