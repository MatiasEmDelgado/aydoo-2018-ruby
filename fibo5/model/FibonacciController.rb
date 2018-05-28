require_relative '../model/Fibonacci'
require 'sinatra'
require 'sinatra/json'

get '/fibonacci/:numero' do
  numero = params[:numero].to_i
  nombre = Fibonacci.new
  hola = nombre.getFibonacciTil(numero)
  json({"fibonacci": { "limite": numero, "lista": hola } })
end