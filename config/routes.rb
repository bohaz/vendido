Rails.application.routes.draw do
  resources :categories, exept: :show
  resources :products, path: '/'
end
