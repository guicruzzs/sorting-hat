class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :spotify_id
      t.string :name
      t.string :artist

      t.timestamps
    end
  end
end
