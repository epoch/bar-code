require 'sinatra'
require 'sinatra/reloader'
require_relative 'db_config'
require_relative 'models/dish'


get '/' do
  @dishes = Dish.all
  erb :index
end