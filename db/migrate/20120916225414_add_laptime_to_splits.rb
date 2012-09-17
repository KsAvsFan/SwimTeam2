class AddLaptimeToSplits < ActiveRecord::Migration
  def change
  	add_column :splits, :laptime, :string
  end
end
