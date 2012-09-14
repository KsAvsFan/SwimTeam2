class Team < ActiveRecord::Base
  attr_accessible :season_id, :swimmer_id

  belongs_to :swimmer
  belongs_to :season

end
