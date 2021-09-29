Rails.application.routes.draw do

  # Users
  post "/users" => "users#create"
  get "/users/:id" => "users#show"
  patch "/users/:id" => "users#update"
  delete "/users/:id" => "users#destroy"

  # Sessions
  post "/sessions" => "sessions#create"

  # Meditations
  get "/meditations" => "meditations#index"
  post "/meditations" => "meditations#create"
  get "/meditations/:id" => "meditations#show"
  patch "/meditations/:id" => "meditations#update"
  delete "/meditations/:id" => "meditations#destroy"
end
