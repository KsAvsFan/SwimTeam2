class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.date :start_date
      t.date :end_date
      t.date :meet_date
      t.boolean :active
      t.string :name

      t.timestamps
    end
  end
end
