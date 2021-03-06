Rails.application.routes.draw do

  root 'static_pages#home'
  get 'signup', to: 'maids#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  get 'places/index'
  
  resources :maids
  resources :users
  resources :messages , except: [:index, :new]
end
