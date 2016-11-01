require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'
require_relative '../models/team'
require_relative '../models/owned_pokemon'


Pokemon.destroy_all
Trainer.destroy_all

dudes = Team.create(name: "Dudes")
rocket = Team.create(name: "Rocket")

ash = Trainer.create(name: "Ash", level: rand(10), img_url: "http://vignette2.wikia.nocookie.net/pokemon/images/c/c2/Ash_Ketchum_BW.png/revision/latest?cb=20140322021458", team: dudes)
brock = Trainer.create(name: "Brock", level: rand(10), img_url: "http://www.cosplayisland.co.uk/files/costumes/3011/29595/p_brock1.gif", team: rocket)
misty = Trainer.create(name: "Misty", level: rand(10), img_url: "http://vignette1.wikia.nocookie.net/pokemon/images/6/63/Misty_(anime).png/revision/latest?cb=20100424105822", team: rocket)

charmander = Pokemon.create(name: "Charmander", poke_type: "fire", img_url: "http://vignette1.wikia.nocookie.net/pokemonfanon/images/d/d1/Charmander!.png/revision/latest?cb=20130202232341")
squirtle = Pokemon.create(name: "Squirtle", poke_type: "water", img_url: "http://vignette2.wikia.nocookie.net/nintendo/images/e/e3/Squirtle.png/revision/latest?cb=20141002083243&path-prefix=en")
pikachu = Pokemon.create(name: "Pikachu", poke_type: "lightning", img_url: "http://vignette2.wikia.nocookie.net/supersmashbrosfanon/images/7/77/Pikachu.png/revision/latest?cb=20131028234047")
bulbasaur = Pokemon.create(name: "Bulbasaur", poke_type: "grass", img_url: "http://vignette4.wikia.nocookie.net/nintendo/images/4/43/Bulbasaur.png/revision/latest?cb=20141002083518&path-prefix=en")
clefairy = Pokemon.create(name: "Clefairy", poke_type: "fairy", img_url: "http://vignette2.wikia.nocookie.net/nintendo/images/d/d2/Clefairy.png/revision/latest?cb=20110917211807&path-prefix=en")
nidoking = Pokemon.create(name: "Nidoking", poke_type: "poison ground", img_url: "http://vignette3.wikia.nocookie.net/villains/images/7/76/Nidoking.png/revision/latest?cb=20110825173633")
gengar = Pokemon.create(name: "Gengar", poke_type: "ghost poison", img_url: "http://vignette4.wikia.nocookie.net/nintendo/images/f/f8/Gengar.png/revision/latest?cb=20101120205715&path-prefix=en")
blastoise = Pokemon.create(name: "Blastoise", poke_type: "water", img_url: "http://vignette1.wikia.nocookie.net/vsbattles/images/4/41/Blastoise.png/revision/20151111225511")

ash.owned_pokemons.create([
  {pokemon: charmander, cp: rand(800)},
  {pokemon: squirtle, cp: rand(800)},
  {pokemon: pikachu, cp: rand(800)},
  {pokemon: gengar, cp: rand(800)},
  {pokemon: blastoise, cp: rand(800)},
  ])

brock.owned_pokemons.create([
  {pokemon: nidoking, cp: rand(800)},
  {pokemon: squirtle, cp: rand(800)},
  {pokemon: pikachu, cp: rand(800)},

  ])

misty.owned_pokemons.create([
  {pokemon: charmander, cp: rand(800)},
  {pokemon: gengar, cp: rand(800)},
  {pokemon: bulbasaur, cp: rand(800)},
  {pokemon: gengar, cp: rand(800)},
  ])
