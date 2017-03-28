class MealsController < ApplicationController
    before_action :set_meal, only: [:show, :update, :destroy]
    before_action :set_dog, only: [:index, :show, :new, :create]

    def index
        @meals = @dog.meals.all
        render json: @meals, status: :ok
    end

    def show
        render json: @meal, status: :ok
    end

    def new
        @meal = @dog.meals.new
    end

    def create
        @meal = @dog.meals.new(meal_params)


        if @meal.save
            render json: @meal, status: :created
        else
            render json: @meal.errors, status: :unprocessable_entity
        end
    end

    def update
        if @meal.update(meal_params)
            render json: @meal, status: :ok
        else
            render json: @meal.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @meal.destroy
        respond_to do |format|
            format.json { head :no_content }
        end
    end

    private

    def meal_params
        params.permit(:start_time, :end_time, :food, :dog_id, :date)
    end

    def set_meal
        @meal = Meal.find(params[:id])
    end


    def set_dog
        @dog = Dog.find(params[:dog_id])
    end
end
