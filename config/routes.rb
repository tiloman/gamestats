Rails.application.routes.draw do
  resources :matches
  get 'games/myMatches'
  devise_for :users

  root 'games#index'
  get 'games/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
