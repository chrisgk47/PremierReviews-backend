class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :image
      t.string :description
      t.string :stadium
      t.string :stadium_img
      t.string :website
      t.string :banner
      t.string :youtube
      t.string :jersey
      t.timestamps
    end
  end
end
