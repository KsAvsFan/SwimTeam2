class Family < ActiveRecord::Base
  attr_accessible :c1_email, :c1_first_name, :c1_home_phone, :c1_last_name, :c1_mobile_phone, :c1_relationship, :c1_work_phone, :c2_email, :c2_first_name, :c2_home_phone, :c2_last_name, :c2_mobile_phone, :c2_relationship, :c2_work_phone, :emergency_contact, :name

  has_many :swimmers
  belongs_to :user

  def c1_full_name
    "#{c1_first_name} #{c1_last_name}" 
  end

  def c2_full_name
    "#{c2_first_name} #{c2_last_name}" 
  end
end
