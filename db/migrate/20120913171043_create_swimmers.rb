class CreateSwimmers < ActiveRecord::Migration
  def change
    create_table :swimmers do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.date :dob
      t.string :email
      t.string :shirt_size
      t.integer :family_id

      t.timestamps
    end
  end
end
