Rails.application.routes.draw do
  root to: "pokemons#index"
  resources :pokemons, only: [:show]
  resources :trainers, only: [:index, :show]
end
