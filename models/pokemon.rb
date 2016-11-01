class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  has_many :owned_pokemons
end
