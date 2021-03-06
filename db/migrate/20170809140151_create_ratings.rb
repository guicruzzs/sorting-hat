class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :track, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
