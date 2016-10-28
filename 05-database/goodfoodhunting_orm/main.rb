require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/dish_type'
require_relative 'models/user'

enable :sessions

helpers do

  def logged_in?
    !!current_user
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

end

get '/' do
  if params[:dish_type_id]
    @dishes = Dish.where(dish_type_id: params[:dish_type_id])
  else
    @dishes = Dish.all
  end
  erb :index
end

get '/dishes/new' do
  # redirect to '/session/new' if !logged_in?

  @dish_types = DishType.all
  erb :dishes_new
end 

get '/dishes/:id' do
  @dish = Dish.find(params[:id])
  # @comments = @dish.comments
  @comments = Comment.where(dish_id: @dish.id)
  erb :dishes_show
end

get '/dishes/:id/edit' do
  @dish = Dish.find(params[:id])
  @dish_types = DishType.all
  erb :dishes_edit
end


post '/dishes' do
  dish = Dish.new
  dish.name = params[:name]
  dish.image_url = params[:image_url]
  dish.dish_type_id = params[:dish_type_id]

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

get '/session/new' do
  erb :session_new
end

post '/session' do
  user = User.find_by(email: params[:email])

  if user && user.authenticate(params[:password]) 
    # you are fine, let me create a session for you
    session[:user_id] = user.id 
    redirect to '/'
  else
    # who are you
    erb :session_new
  end
end

delete '/session' do
  # clearing the session
  session[:user_id] = nil
  redirect to '/session/new'
end