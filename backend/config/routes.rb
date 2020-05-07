Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :destinations
  resources :postcards
  # get "/countries", to: "destinations#countries"
  get "/cities", to: "destinations#cities"
end
