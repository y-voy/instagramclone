Rails.application.routes.draw do
  root 'sessions#new'
  resources :pictures do
    collection do
      post :confirm
    end
    member do
      get :favorite_list
    end
  end
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
