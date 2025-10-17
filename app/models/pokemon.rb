class Pokemon < ApplicationRecord
  has_many :pokeballs
  has_many :trainers, through: :pokeballs
  has_one_attached :photo
  # validations à faire si voulu
end
