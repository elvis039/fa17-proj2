class FlipTables < ActiveRecord::Migration[5.1]
  def change
  		drop_table :playlists_movies
  	    create_table :movies_playlists, id: false do |t|
    		t.belongs_to :playlist, index: true
    		t.belongs_to :movie, index: true
    	end
  end
end
