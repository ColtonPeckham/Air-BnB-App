Rails.application.routes.draw do
  get 'room_images/create'
  get 'room_images/destroy'
  get 'create/destroy'
  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  resources :reservations
end
