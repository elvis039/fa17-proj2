class CreatePlaylists < ActiveRecord::Migration[5.1]
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end

    create_table :playlists_movies, id: false do |t|
    	t.belongs_to :playlist, index: true
    	t.belongs_to :movie, index: true
    end
  end
end
