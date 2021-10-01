Rails.application.routes.draw do
  resources :user_stocks, only: [:create]
  devise_for :users
  root to: 'pages#home'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stock', to: 'stocks#search'
end
