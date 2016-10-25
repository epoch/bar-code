require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'

def run_sql(sql)
  db = PG.connect(dbname: 'goodfoodhunting')
  results = db.exec(sql)
  db.close
  return results
end

get '/' do
  # show all dishes
  # connect to db
  # db = PG.connect(dbname: 'goodfoodhunting')
  # exec a select query
  # @dishes = db.exec("select * from dishes;")
  # db.close
  @dishes = run_sql("select * from dishes;")
  erb :index
end

get '/dishes/new' do
  # show the form only
  erb :dishes_new
end

post '/dishes' do
  # create the dish
  run_sql("INSERT INTO dishes (name, image_url) VALUES ('#{ params[:name] }', '#{ params[:image_url] }');")
  redirect to '/'
end

get '/dishes/:id' do

  # show single dish
  # search for dish with that id
  results = run_sql("SELECT * FROM dishes WHERE id = #{ params[:id] };")
  @dish = results[0]

  erb :dishes_show
end

# show the edit dish form
get '/dishes/:id/edit' do

  @dish = run_sql("select * from dishes where id = #{ params[:id] };").first

  erb :dishes_edit
end

# updating an existing dish
post '/dishes/:id' do
  params.inspect

  # update dishes set name = 'new name', image_url = '' where id = 7;

  run_sql("UPDATE dishes SET name = '#{ params[:name] }', image_url = '#{ params[:image_url] }' WHERE id = #{ params[:id] };")

  redirect to "/dishes/#{ params[:id] }"
end

post '/dishes/:id/delete' do
  run_sql("DELETE FROM dishes WHERE id = #{ params[:id] };")
  redirect to '/'
end




