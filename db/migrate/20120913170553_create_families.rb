class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :name
      t.string :c1_first_name
      t.string :c1_last_name
      t.string :c1_relationship
      t.string :c1_home_phone
      t.string :c1_mobile_phone
      t.string :c1_work_phone
      t.string :c1_email
      t.string :c2_first_name
      t.string :c2_last_name
      t.string :c2_relationship
      t.string :c2_home_phone
      t.string :c2_mobile_phone
      t.string :c2_work_phone
      t.string :c2_email
      t.text :emergency_contact

      t.timestamps
    end
  end
end
