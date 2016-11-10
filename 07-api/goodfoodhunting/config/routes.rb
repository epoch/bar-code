Rails.application.routes.draw do

  # 7 standard crud routes
          # controller name # action/method name    
  # get '/dishes', to: 'dishes#index' # list all dishes

  # get '/dishes/new', to: 'dishes#new' # get new dish form
  # post '/dishes', to: 'dishes#create' # create new dish


  # get '/dishes/:id/edit', to: 'dishes#edit' # get edit dish form
  # patch '/dishes/:id', to: 'dishes#update' # update existing dish

  # delete '/dishes/:id', to: 'dishes#destroy' # delete existing dish
  # get '/dishes/:id', to: 'dishes#show' # show single dish

  resources :dishes
  resources :users

  get '/donate', to: 'pages#donate'

  get '/login', to: 'session#new'
  post '/session', to: 'session#create'
  delete '/logout', to: 'session#destroy'

  post '/likes', to: 'likes#create'


  get '/api/dishes', to: 'api/dishes#index'
end
