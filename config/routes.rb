Rails.application.routes.draw do

  resources :rooms

  resources :reviews
  resources :room_images

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  resources :reservations

end
