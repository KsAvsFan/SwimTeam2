class Swimmer < ActiveRecord::Base
  attr_accessible :dob, :email, :family_id, :first_name, :gender, :last_name, :shirt_size

  belongs_to :family
  has_many :splits
  has_many :teams
  has_many :seasons, :through => :teams

  validates :dob, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :gender, :presence => true


  def age_in_years
  	age = Date.today.year - self.dob.year
    age -= 1 if Date.today < self.dob + age.years #for days before birthday
    return age
  end

  def full_name
    "#{last_name}, #{first_name}" 
  end
end
