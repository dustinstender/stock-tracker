Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'my_portfolio', to: 'users#my_portfolio'
end
