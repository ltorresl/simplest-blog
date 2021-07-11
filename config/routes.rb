Rails.application.routes.draw do
  devise_for :authors
  get 'home/index'

  # Setup root page for Devise gem
  root to: "readers/home#index"

  scope module: 'authors' do
    resources :posts do
      resources :elements
    end
  end

end
