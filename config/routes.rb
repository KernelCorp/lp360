Lp360::Application.routes.draw do

  resources :categories, only: [:index, :show]
  resources :products, only: :show
  resources :partners, only: :index
  resources :pages, only: :show, path: 'pages/'

end
