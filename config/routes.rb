Rails.application.routes.draw do
  get 'users/new'
  root 'static_pages_controller#home'
  get  '/help',    to: 'static_pages_controller#help'
  get  '/about',   to: 'static_pages_controller#about'
  get  '/contact', to: 'static_pages_controller#contact'
  get  '/signup',  to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
