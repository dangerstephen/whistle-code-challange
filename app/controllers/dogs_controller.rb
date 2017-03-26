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

  def create
  @dog = Dog.new(dog_params)

  if @dog.save
    render json: @dog, status: :created, location: @dog
  end
end

def update
  if @dog.update(dog_params)
    render json: @dog, status: :ok
  end
end

def destroy
  @dog.destroy
  respond_to do |format|
    format.json { head :no_content }
  end
end


  private
  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name)
  end

end
