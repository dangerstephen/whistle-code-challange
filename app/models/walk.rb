class Walk < ActiveRecord::Base
  validates :start_time, :end_time, :location, :dog_id, presence: true
  validate :is_overlaing?

  belongs_to :dog


  private

  def overlapping_scheduling
      meals = Meal.where(date: date)
                  .where(dog_id: dog_id)
                  .where(<<-SQL, start_time: start_time, end_time: end_time)
                  NOT( (start_time >= :end_time) OR (end_time <= :start_time) )
                SQL

      walks = Walk.where(date: date)
                  .where(dog_id: dog_id)
                  .where(<<-SQL, start_time: start_time, end_time: end_time)
                  NOT( (start_time >= :end_time) OR (end_time <= :start_time) )
                SQL

      return walks.concat(meals)
    end

    def is_overlaing?
      return if overlapping_scheduling.empty?
      errors[:start_time] << "must come before end time"
      errors[:end_time] << "must come after start time"

    end



end
