Rails.application.routes.draw do
  root 'cryptocurrencies#index'
  devise_for :users
  resources :users, only: [:index, :create, :show]
  resources :cryptocurrencies do
    resources :prices, only: [:new, :create]
  end

  namespace :api do
    namespace :v1 do
      resources :cryptocurrencies, only: [:index, :show]
      resources :prices, only: [:index, :show, :create]
      resources :user, only: [:index]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
