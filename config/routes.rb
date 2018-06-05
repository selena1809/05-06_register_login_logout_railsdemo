Rails.application.routes.draw do
  resources :users
  get '/signup', to: 'users#new'

 


    get '/sessions/sign_in', to: 'sessions#sign_in'
    post '/sessions/login', to: 'sessions#login'
    get '/sessions/logout', to: 'sessions#logout'
  
end

# get '/users/sign_in' => view: form => email + password
# put/pots action => validate/check => error =>
# success => 

