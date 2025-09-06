Rails.application.routes.draw do
  get "posts/index"
  get "posts/new"
  get "posts/create"
  root to: "posts#index" # <-- this makes posts#index the homepage

  devise_for :users
  resources :posts, only: [:index, :new, :create]
end
