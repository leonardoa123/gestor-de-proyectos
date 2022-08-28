Rails.application.routes.draw do
  root "formularies#index"
  resources :formularies
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
