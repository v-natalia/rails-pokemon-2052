class Trainer < ApplicationRecord
  has_many :pokeballs
  has_many :pokemons, through: :pokeballs
  has_one_attached :photo

  # validations à faire si voulu
end
