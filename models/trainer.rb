class Trainer < ActiveRecord::Base
  has_many :pokemons
  has_many :owned_pokemons
  belongs_to :team
end
