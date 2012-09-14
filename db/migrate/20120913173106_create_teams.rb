class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :season_id
      t.integer :swimmer_id

      t.timestamps
    end
  end
end
