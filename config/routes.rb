Rails.application.routes.draw do
  root to: "pokemons#index"
  resources :pokemons, only: [:show] do
    resources :pokeballs, only: [:create]
  end
  resources :trainers, only: [:index, :show]
end
