Rails.application.routes.draw do
  resources :categories, exept: :show
  resources :products, path: '/'

  namespace :authentication, path: '', as: ''  do
    resources :users, only: [:new, :create]
  end
end
