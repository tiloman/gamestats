Rails.application.routes.draw do
  resources :matches
  devise_for :users
  resources :users

  root 'matches#index'
  get 'games/about'
  get 'games/myMatches'
  get 'games/ranking'

  match 'users/:id' => 'users#show', via: :get


  # Service Worker Routes
get '/service-worker.js' => "service_worker#service_worker"
get '/manifest.json' => "service_worker#manifest"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
