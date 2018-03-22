Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :users
  resources :books

=begin
  get    'login/index'
  get    '/users/sign_up',  to: 'users#new'
  get    '/users/sign_in',   to: 'sessions#new'
  get    '/sell',    to:  'books#new'
  post   '/users/sign_in',   to: 'sessions#create'
  post   '/sell',    to: 'books#create'
  #delete '/users/sign_out',  to: 'devise/sessions#destroy'
  #get "/users/sign_out" => "sessions#destroy"
  #delete "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session_path
=end
  get    '/sell',    to:  'books#new'
  post   '/sell',    to: 'books#create'
  
  root 'login#index'

  #match 'users/sign_out', to: 'sessions#destroy', as: 'sign_out', via: [:get, :post]
  #match 'Logout', to: 'sessions#destroy', as: 'users/sign_out', via: [:get, :post]
  
end
