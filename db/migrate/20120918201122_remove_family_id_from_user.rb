class RemoveFamilyIdFromUser < ActiveRecord::Migration
  def change
  	remove_column :users, :family_id
  end
end
