Rails.application.routes.draw do

  resources :topics, only: [:index, :show]

  resources :comments
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about', as: 'about_me'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  root to: 'pages#home'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
