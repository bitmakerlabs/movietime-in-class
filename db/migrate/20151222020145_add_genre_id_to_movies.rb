class AddGenreIdToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :genre_id, :integer
    add_column :movies, :synopsis, :text
  end
end
