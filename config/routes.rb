Rails.application.routes.draw do
  resources :tasks
  resources :books
  resources :posts
  get 'pages/home'
  get 'pages/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
