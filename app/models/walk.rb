class Walk < ActiveRecord::Base
  validates :start_time, :end_time, :location, :dog_id, presence: true

  belongs_to :dog
end
