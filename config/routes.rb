Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  root 'pages#home'

  devise_for :users
  resource :account, only: [:show, :edit, :update]
  resources :articles
  get '/:themes', to: 'articles#index'
end
