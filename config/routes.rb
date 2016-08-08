Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  root to: 'welcome#index'
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
