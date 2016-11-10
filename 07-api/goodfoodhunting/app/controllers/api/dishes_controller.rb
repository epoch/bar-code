class Api::DishesController < ApplicationController

  def index
    dishes = Dish.all

    render json: dishes.to_json
  end

end