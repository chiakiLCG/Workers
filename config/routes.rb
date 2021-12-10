Rails.application.routes.draw do
  root to: 'sessions#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'index', to: 'works#index'
  get 'paid_holidays', to: 'works#paid_holidays'

  delete 'logout', to: 'sessions#destroy'

  resources :works, only: [:index]
end
