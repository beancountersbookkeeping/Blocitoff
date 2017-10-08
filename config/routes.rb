Rails.application.routes.draw do

  devise_for :users

  get 'users/show'

  resources :items, only: [:create, :destroy]

  root 'welcome#index'

end
