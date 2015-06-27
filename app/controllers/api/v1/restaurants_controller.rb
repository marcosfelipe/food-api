class Api::V1::RestaurantsController < ApplicationController
  def index
    @restaurants = Stadium.find(params[:stadium_id]).restaurants
    render status: :ok
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      render status: :ok
    else
      render status: :unprocessable_entity
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:avatar, :name, :stadium_id)
  end
end
