require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/dish_type'


get '/' do
  @dishes = Dish.all
  erb :index
end

get '/dishes/new' do
  @dish_types = DishType.all
  erb :dishes_new
end 

get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  # @comments = @dish.comments
  @comments = Comment.where(dish_id: @dish.id)
  erb :dishes_show
end


post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type = params[:dish_type]

  if dish.save
    redirect to '/'
  else
    erb :dishes_new
  end
end

post '/comments' do
  comment = Comment.new
  comment.body = params[:body]
  comment.dish_id = params[:dish_id]
  comment.save
  redirect to "/dishes/#{comment.dish_id}"
end