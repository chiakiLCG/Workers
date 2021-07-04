Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  get 'show', to: 'users#show'


  resources :users, only: [:show]
end