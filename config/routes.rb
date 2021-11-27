Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about'
  resources :books
  root to: 'homes#top'
  resources :users
end
