Rails.application.routes.draw do
  # root 'pages#home'

  devise_for :users
  resources :articles
  get '/:themes', to: 'articles#index'
end
