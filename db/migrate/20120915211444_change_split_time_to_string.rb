class ChangeSplitTimeToString < ActiveRecord::Migration
  def change
  	change_column :splits, :split_time, :string 
  end
end
