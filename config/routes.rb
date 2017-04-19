Rails.application.routes.draw do
  # get 'sessions/new'

  root to: 'static_pages#home'
  get 'signup',  to: 'users#new'
  get    'login' , to: 'sessions#new'
  post   'login' , to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :microposts do
    member do
      post :retweet
    end
  end
  resources :users do    
    member do
      get :followings, :followers    
    end
  end
  
  
  resources :relationships, only: [:create, :destroy]
end