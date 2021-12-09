Rails.application.routes.draw do
  root to: 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  
  get 'show', to: 'users#show'
  get 'paid_holidays', to: 'works#paid_holidays'

  delete 'logout', to: 'sessions#destroy'

  resources :users, only: [:show]
end