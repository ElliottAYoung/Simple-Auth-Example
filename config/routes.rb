Rails.application.routes.draw do
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :users, only: [:new, :create]
  resources :dashboards, only: [:index], path: '/home'

  root 'dashboards#index'
end
