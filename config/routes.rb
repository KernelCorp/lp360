Lp360::Application.routes.draw do

  resources :categories, only: [:index, :show]
  resources :products, only: [:show]

  resources :news, only: [:index, :show]
  resources :partners, only: [:index]

end
