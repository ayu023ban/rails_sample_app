Rails.application.routes.draw do

  get 'password_resets/new'
  get 'password_resets/edit'
  resources :users
  get '/root', to:'static_pages_controller#home'
  get  '/help',    to: 'static_pages_controller#help'
  get  '/about',   to: 'static_pages_controller#about'
  get  '/contact', to: 'static_pages_controller#contact'
  get  '/signup',  to: 'users#new'
  root 'static_pages_controller#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit,:update]
  resources :microposts,      only: [:create, :destroy]
  resources :relationships,   only: [:create, :destroy]
end
