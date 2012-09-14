class Season < ActiveRecord::Base
  attr_accessible :active, :end_date, :meet_date, :name, :start_date

  has_many :teams
  has_many :swimmers, :through => :teams

end
