require 'sinatra'
require 'sinatra/reloader'

get '/hello' do
  'hi there'
end

get '/about-me' do
  'my name is epoch'
end


get '/donate' do # request
  @amount_donated = 75_000_234
  erb :donate
   # erb :donate, locals: { amount_donated: amount_donated} # response
end

get '/cheeseburger' do
  if params['name'] == 'dt'
    return 'the price is free'
  else
    return 'the price for chess burger is $50'
  end
end

#                     queryString
# localhost:4567/add?num1=5&num2=7
get '/add' do
  # this is the return crappy calcular
  # 2 params of numbers
  # return the sum
  result = params[:num1].to_i + params[:num2].to_i
  return "the sum is #{result}"
end 

