class Meal < ActiveRecord::Base
  validates :start_time, :end_time, :food, :dog_id, presence: true

  belongs_to :dog
end
