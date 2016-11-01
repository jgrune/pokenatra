require 'active_record'
require 'ffaker'
require 'pg'
require_relative 'connection'
require_relative '../models/pokemon'
require_relative '../models/trainer'


Pokemon.destroy_all
Trainer.destroy_all

Pokemon.create(name: "Charmander", cp: rand(800), poke_type: "fire", img_url: "http://vignette1.wikia.nocookie.net/pokemonfanon/images/d/d1/Charmander!.png/revision/latest?cb=20130202232341")
Pokemon.create(name: "Squirtle", cp: rand(800), poke_type: "water", img_url: "http://vignette2.wikia.nocookie.net/nintendo/images/e/e3/Squirtle.png/revision/latest?cb=20141002083243&path-prefix=en")
Pokemon.create(name: "Pikachu", cp: rand(800), poke_type: "lightning", img_url: "http://vignette2.wikia.nocookie.net/supersmashbrosfanon/images/7/77/Pikachu.png/revision/latest?cb=20131028234047")
Pokemon.create(name: "Bulbasaur", cp: rand(800), poke_type: "grass", img_url: "http://vignette4.wikia.nocookie.net/nintendo/images/4/43/Bulbasaur.png/revision/latest?cb=20141002083518&path-prefix=en")
Pokemon.create(name: "Clefairy", cp: rand(800), poke_type: "fairy", img_url: "http://vignette2.wikia.nocookie.net/nintendo/images/d/d2/Clefairy.png/revision/latest?cb=20110917211807&path-prefix=en")
Pokemon.create(name: "Nidoking", cp: rand(800), poke_type: "poison ground", img_url: "http://vignette3.wikia.nocookie.net/villains/images/7/76/Nidoking.png/revision/latest?cb=20110825173633")
Pokemon.create(name: "Gengar", cp: rand(800), poke_type: "ghost poison", img_url: "http://vignette4.wikia.nocookie.net/nintendo/images/f/f8/Gengar.png/revision/latest?cb=20101120205715&path-prefix=en")
Pokemon.create(name: "Blastoise", cp: rand(800), poke_type: "water", img_url: "http://vignette1.wikia.nocookie.net/vsbattles/images/4/41/Blastoise.png/revision/20151111225511")



Trainer.create(name: "Ash", level: rand(10), img_url: "http://vignette2.wikia.nocookie.net/pokemon/images/c/c2/Ash_Ketchum_BW.png/revision/latest?cb=20140322021458")
Trainer.create(name: "Brock", level: rand(10), img_url: "http://www.cosplayisland.co.uk/files/costumes/3011/29595/p_brock1.gif")
Trainer.create(name: "Misty", level: rand(10), img_url: "http://vignette1.wikia.nocookie.net/pokemon/images/6/63/Misty_(anime).png/revision/latest?cb=20100424105822")
