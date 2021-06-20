class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :game1
      t.string :game2
      t.string :season
      t.string :home
      t.string :away
      t.integer :home_score
      t.integer :away_score
      t.date :date
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
