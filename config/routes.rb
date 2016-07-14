Rails.application.routes.draw do
  resources :wave_pools, only: [:index]
  resources :sheets
  devise_for :users
  resources :ondas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'ondas#index'

  get "ondas/:id/:garbage" => "ondas#show", as: :random_onda
end
