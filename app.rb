require 'sinatra'
require 'sinatra/reloader'
require 'active_record'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainer'


get '/' do
  erb :index
end

get '/all' do
  @pokemon = Pokemon.all
  erb :"pokemon/all"
end

get '/trainers' do
  @trainers = Trainer.all
  erb :"trainers/all"
end

get '/all/new' do
  erb :"pokemon/new"
end

get '/all/:id' do
  @thispokemon = Pokemon.find(params[:id])
  erb :"pokemon/show"
end

get '/all/:id/edit' do
  @thispokemon = Pokemon.find(params[:id])
  erb :"pokemon/edit"
end

post '/all' do
  Pokemon.create(params[:pokemon])
  redirect "/all"
end

put '/all/:id' do
  @thispokemon = Pokemon.find(params[:id])
  @thispokemon.update(params[:pokemon])
  redirect "/all/#{params[:id]}"
end

delete '/all/:id' do
  @thispokemon = Pokemon.find(params[:id])
  @thispokemon.destroy
  redirect "/all"
end

delete '/trainers/:id' do
  @trainer = Trainer.find(params[:id])
  @trainer.destroy
  redirect "/trainers"
end
