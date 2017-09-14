Rails.application.routes.draw do

  root 'welcome#index'
  get 'user/show'

  devise_for :users

end
