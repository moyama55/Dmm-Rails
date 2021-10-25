Rails.application.routes.draw do
  devise_for :users
  get 'home/about' => 'homes#about'
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  root to: 'homes#top'
end
