class DishesController < ApplicationController

  def index
    @dishes = Dish.all
    # render :index
  end

  def new
    # new.html.erb
    # render :new
    # erb :new
  end

  def create
    dish = Dish.new
    dish.title = params[:title]
    dish.image_url = params[:image_url]

    if dish.save
      redirect_to '/dishes'
    else
      render :new # just showing the template
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])
    @dish.title = params[:title]
    @dish.image_url = params[:image_url]
    if @dish.save
      redirect_to '/dishes'
    else
      render :edit
    end
  end

end