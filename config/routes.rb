Rails.application.routes.draw do
  resources :users
  resources :tasks
  resources :books
  resources :posts
  get 'pages/home'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "tasks#index"
end
