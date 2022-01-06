Rails.application.routes.draw do
  root to: 'works#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'

  get 'index', to: 'works#index'
  get 'paid_holidays', to: 'works#paid_holidays'
  # get 'works/new/:id', to: 'works#new'
  delete 'logout', to: 'sessions#destroy'
  resources :works do
    collection do
      get :index, to: 'works#index'
    end
    member do
      post :create, to: 'works#create'
      patch :update, to: 'works#update'
    end
  end

  # resources :works, only: %i[index create]
end
