class AddIdToGenre < ActiveRecord::Migration[5.0]
  def change
    add_column :genres, :song_id, :integer
  end
end
