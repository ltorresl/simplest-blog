Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'

  # Setup root page for Devise gem
  root to: "home#index"
  scope module: 'authors' do
    resources :posts
  end
end
