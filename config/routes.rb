Rails.application.routes.draw do
  root 'sessions#new'
  resources :pictures do
    collection do
      post :confirm
    end
    member do
      get :favorite_list
    end
    resources :comments, only: [:create, :destroy]
  end
  resources :users do
    member do
      get :followings, :followers
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :likes, only: [:create, :destroy]
  resources :follow_relationships, only: [:create, :destroy]

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
