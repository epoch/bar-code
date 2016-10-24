require 'sinatra'
require 'sinatra/reloader'
require 'pg'

get '/' do
  db = PG.connect(dbname: 'guestbook')

  @guests = db.exec('SELECT * FROM guests;')

  db.close
  erb :index
end

get '/checkin' do

end