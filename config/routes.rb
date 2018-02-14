Rails.application.routes.draw do
  resources :users

  get 'login/index'
  get '/signup',  to: 'users#new'

  root 'login#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
