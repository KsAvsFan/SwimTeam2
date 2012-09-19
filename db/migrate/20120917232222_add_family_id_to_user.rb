class AddFamilyIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :family_id, :integer
  end
end
