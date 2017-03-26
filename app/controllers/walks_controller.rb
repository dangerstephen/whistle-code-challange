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

  def create
  @walk = @dog.walks.new(walk_parmas)

  if @walk.save
    render json: @walk, status: :created
  else
    render json: @walk.errors, status: :unprocessable_entity
  end
end

def update
  if @walk.update(walk_parmas)
    render json: @walk, status: :ok
  else
    render json: @walk.errors, status: :unprocessable_entity
  end
end

def destroy
  @walk.destroy
  respond_to do |format|
    format.json { head :no_content }
  end
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
