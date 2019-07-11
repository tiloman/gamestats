Rails.application.routes.draw do
  resources :matches
  resources :users
  devise_for :users

  root 'games#index'
  get 'games/about'
  get 'games/myMatches'
  get 'games/ranking'

  match 'users/:id' => 'users#show', via: :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
