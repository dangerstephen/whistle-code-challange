class WalksController < ApplicationController
  before_action :set_walk, only: [:show, :update, :destroy]

  before_action :set_dog, only: [:index, :show, :new, :create]

  def index
    @walks = @dog.walks.all
    render json: @walks, status: :ok
  end

  def show
    render json: @walk, status: :ok
  end

  def new
    @walk = @dog.walks.new
  end

  private

  def walk_parmas
    params.permit(:start_time, :end_time, :location, :dog_id)
  end

  def set_walk
    @walk = Meal.find(params[:id])
  end

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end
end 
