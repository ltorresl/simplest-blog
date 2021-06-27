Rails.application.routes.draw do
  resources :posts
  devise_for :authors
  get 'home/index'
  # Setup root page for Devise gem
  root to: "home#index"
end
