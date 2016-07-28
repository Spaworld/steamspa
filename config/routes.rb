Rails.application.routes.draw do
  namespace :admin do

    # Dashboard
    get '/' => 'base#index', as: 'dashboard'

    # Dashboard
    resources :pages
    resources :products
    resources :posts
    resources :users
  end
end
