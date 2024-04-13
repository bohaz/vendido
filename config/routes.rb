Rails.application.routes.draw do
  get '/products', to: 'products#index'
  get '/products/:id', to: 'products#show', as: 'product'
  # Defines the root path route ("/")
  # root "articles#index"
end
