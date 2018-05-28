require_relative '../model/FibonacciController'
require 'rspec'
require 'rack/test'
require 'json'

describe 'Aplicacion Sinatra' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  describe '/fibonacci/5' do
    it 'Deberia devolver un json con los primeros 5 numeros de la sucecion de Fibonacci' do
      get '/fibonacci/5'

      expect(last_response).to be_ok
      cuerpo_parseado = JSON.parse(last_response.body)
      expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
      expect(cuerpo_parseado['fibonacci']['lista']).to eq [0,1,1,2,3]
    end
  end
end