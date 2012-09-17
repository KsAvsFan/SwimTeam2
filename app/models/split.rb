class Split < ActiveRecord::Base
  attr_accessible :distance, :event_date, :event_type, :notes, :split_time, :laptime, :stroke, :swimmer_id

  belongs_to :swimmers
end
