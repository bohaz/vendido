Rails.application.routes.draw do
  resources :categories, exept: :show
  resources :products, path: '/'

  namespace :authentication do
    resources :users, only: [:new, :create]
  end
end
