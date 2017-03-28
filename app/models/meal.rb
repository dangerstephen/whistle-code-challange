class Meal < ActiveRecord::Base
    validates :start_time, :end_time, :food, :dog_id, presence: true
    validate :check_over_lap
    belongs_to :dog

    def check_over_lap
        meals = Meal.where(<<-SQL, start_time: start_time, end_time: end_time)
        NOT( (start_time > :end_time) || (end_time < :start_time) )
              SQL
              
        walks = Walk.where(<<-SQL, start_time: start_time, end_time: end_time)
        NOT( (start_time > :end_time) || (end_time < :start_time) )
              SQL
   if walks.size > 0 || meals.size > 0
        errors.add(:start_time, "Sorry! Another Event is during this same time")
        errors.add(:end_time, "Sorry! Another Event is during this same time")
    end
end

end
