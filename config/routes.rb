Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
  
  get 'home/about' => 'home#about'
  root 'home#top'

end