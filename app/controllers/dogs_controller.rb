class DogsController < ApplicationController
  before_action :set_dog, only: [:show, :update, :destroy, :schedule]

  def  index
    @dogs = Dog.all
    render json: @dogs, status: :ok
  end

  def show
    render json: @dog, status: :ok
  end

  def new
    @dog = Dog.new
  end


  private
  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name)
  end

end
