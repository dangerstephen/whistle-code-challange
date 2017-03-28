class Walk < ActiveRecord::Base
  validates :start_time, :end_time, :location, :dog_id, presence: true
  validate :is_overlaing

  belongs_to :dog


  private

  def check_for_overlap
      meals = Meal.where(date: date)
      walks = Walk.where(date: date)
      return walks.concat(meals)
    end

    def is_overlaing
      return if check_for_overlap.empty?
    end



end
