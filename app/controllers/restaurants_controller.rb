class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
  
  def show
    @restaurant = Restaurant.find(params[:id])
    @comments =  @restaurant.comments
  end
end
