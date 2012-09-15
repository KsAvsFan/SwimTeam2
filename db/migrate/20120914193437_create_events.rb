class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :distance
      t.string :stroke

      t.timestamps
    end
  end
end
