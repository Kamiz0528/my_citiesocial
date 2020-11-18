Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'products#index'

  resources :products, only: [:index, :show]

  namespace :admin do
    root 'products#index' # /admin
    resources :products, excpet: [:show]
    resources :vendors, excpet: [:show]
  end
end
