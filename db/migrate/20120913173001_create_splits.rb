class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.integer :swimmer_id
      t.date :event_date
      t.integer :distance
      t.string :event_type
      t.integer :split_time
      t.text :notes
      t.string :stroke

      t.timestamps
    end
  end
end
