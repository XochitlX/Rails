Rails.application.routes.draw do
  
  #root 'games#index'
  root 'users#index'
  get   '/users/new', to: 'users#new',    as: 'new_user'
  post  '/users',     to: 'users#create', as: 'users_create'
  get   '/users',     to: 'users#log',    as: 'users_log'
  post  '/users/log',     to: 'users#log_in', as: 'users_log_in'

  get   '/user/:user_id/decks', to: 'decks#show',   as: 'deck_show'
  get   '/user/:user_id/decks/:deck_id/round', to: 'rounds#show',   as: 'round_show'
  post   '/user/:user_id/decks/:deck_id/round/total', to: 'statistics#show',   as: 'statistic_show'

  #game GET    /games/:id(.:format)      games#show
  #resources :games
  
  #game GET    /games/:id(.:format)      games#show
end
