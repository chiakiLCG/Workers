Rails.application.routes.draw do
  root to: 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  get 'show', to: 'users#show'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:show]
end