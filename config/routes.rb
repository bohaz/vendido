Rails.application.routes.draw do
  get '/products', to: 'products#index'

  # Defines the root path route ("/")
  # root "articles#index"
end
