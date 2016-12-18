Rails.application.routes.draw do

  root 'static_pages#home'
  get 'map/index'
  resources :users
end
