class SchedulesController < ApplicationController
  before_action :set_walk, only: [:show, :update, :destroy]
  before_action :set_meal, only: [:show, :update, :destroy]
  before_action :set_dog, only: [:index, :show, :new, :create]

  def show
    @schedule = []
    @schedule.concat(@meal)
    @schedule.concat(@walk)
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_walk
    @walk = Walk.where(date: params[:date], dog_id: params[:dog_id])
  end

  def set_meal
    @meal = Meal.where(date: params[:date], dog_id: params[:dog_id])
  end
end
