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
  else
    format.json { render json: @dog.errors, status: :unprocessable_entity }
  end
end

def edit
  @dog = Dog.find(set_dog)
end

def update
  if @dog.update(dog_params)
    render json: @dog, status: :ok
  else
    render json: @dog.errors, status: :unprocessable_entity
  end
end

def destroy
  @dog = Dog.find(set_dog)
  @dog.destroy
  redirect_to('/interact')
end


  private
  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :image_src, :bio)
  end

end
