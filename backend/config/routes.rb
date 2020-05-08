Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :destinations
  resources :postcards
  resources :sessions
  # get "/countries", to: "destinations#countries"
  get "/cities", to: "destinations#cities"

  resources :users
  get '/profile', to: 'users#show' 

  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
end
