require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get '/' do
  db = PG.connect(dbname: 'guestbook')
  @guests = db.exec('SELECT * FROM guests;')
  db.close
  erb :index
end

get '/about' do
  'about me'
end

post '/checkin' do

  db = PG.connect(dbname: 'guestbook')

  # insert a new record
  sql = "insert into guests (name, email, comment) values ('#{ params[:name] }', '#{ params[:email] }', '#{ params[:comment] }');"

  db.exec(sql);
  db.close
  redirect to '/'
end