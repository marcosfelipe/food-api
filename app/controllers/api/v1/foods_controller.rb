class Api::V1::FoodsController < ApplicationController
  def index
    @foods = Restaurant.find(params[:restaurant_id]).foods
  end

  def create
    @food = Restaurant.find(params[:restaurant_id]).foods.new(food_params)
    if @food.save
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  private

  def food_params
    params.require(:food).permit(:avatar, :name, :description)
  end
end
