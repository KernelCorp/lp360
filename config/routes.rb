Lp360::Application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'categories#index'

  resources :categories, only: [:index, :show]
  resources :products, only: :show
  resources :partners, only: :index
  resources :pages, only: :show, path: 'pages/'

end
