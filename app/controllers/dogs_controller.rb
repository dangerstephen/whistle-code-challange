class DogsController < ApplicationController

def  index
  @dogs = Dog.all
  render json: @dogs, status: :ok
end

def show
  render json: @dog, status: :ok
end

  def create
    dog = Dog.create(dog_params)
    render json: present_dog(dog), status: :created
  end

  private
  def set
    @dog = Dog.find(params[:id])
  end
  
  def dog_params
    params.require(:dog).permit(:name)
  end


  def present_dog(dog)
    {
      id: dog.id,
      name: dog.name
    }
  end
end
