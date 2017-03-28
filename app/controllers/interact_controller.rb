class InteractController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

end
