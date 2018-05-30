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

  describe '/fibonacci/5?sentido=inverso' do
   it 'Deberia devolver un json con los primeros 5 numeros de la sucecion de Fibonacci en orden invertido' do
     get '/fibonacci/5?sentido=inverso'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
     expect(cuerpo_parseado['fibonacci']['lista']).to eq [3, 2, 1, 1, 0]
   end
  end

  describe '/fibonacci/5/lista?sentido=inverso' do
   it 'Deberia devolver un json con los primeros 5 numeros de la sucecion de Fibonacci en orden invertido extendiendo la url con la palabra lista' do
     get '/fibonacci/5/lista?sentido=inverso'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
     expect(cuerpo_parseado['fibonacci']['lista']).to eq [3, 2, 1, 1, 0]
   end
  end

  describe '/fibonacci/5?sentido=directo' do
   it 'Deberia devolver un json con los primeros 5 numeros de la sucecion de Fibonacci en orden directo' do
     get '/fibonacci/5?sentido=directo'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
     expect(cuerpo_parseado['fibonacci']['lista']).to eq [0,1,1,2,3]
   end
  end
  
  describe '/fibonacci/5/sumatoria' do
   it 'Deberia devolver un json con la suma de los primeros 5 numeros de la sucecion de Fibonacci' do
     get '/fibonacci/5/sumatoria'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 5
     expect(cuerpo_parseado['fibonacci']['sumatoria']).to eq 7
   end
  end
  
  describe '/fibonacci/8?solo=pares' do
   it 'Deberia devolver un json con los numeros pares entre los primeros 5 numeros de la sucecion de Fibonacci' do
     get '/fibonacci/8?solo=pares'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 8
     expect(cuerpo_parseado['fibonacci']['lista']).to eq [2, 8]
   end
  end
  
  describe '/fibonacci/8?sentido=inverso&solo=pares' do
   it 'Deberia devolver un json con los numeros pares entre los primeros 5 numeros de la sucecion de Fibonacci en orden inverso' do
     get '/fibonacci/8?sentido=inverso&solo=pares'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 8
     expect(cuerpo_parseado['fibonacci']['lista']).to eq [8, 2]
   end
  end

  describe '/fibonacci/8/sumatoria?solo=pares' do
   it 'Deberia devolver un json con la suma de los primeros 5 numeros de la sucecion de Fibonacci' do
     get '/fibonacci/8/sumatoria?solo=pares'

     expect(last_response).to be_ok
     cuerpo_parseado = JSON.parse(last_response.body)
     expect(cuerpo_parseado['fibonacci']['limite']).to eq 8
     expect(cuerpo_parseado['fibonacci']['sumatoria']).to eq 10
   end
  end

  describe '/fibonacci/8?solo=passres' do
   it 'Deberia redireccionar al endpoint de error ya que el parametro solo es incorrecto' do
     get '/fibonacci/8?solo=passres'
     expect(last_response.redirect?).to be_truthy
   end
  end

  describe '/fibonacci/8/sumatoria?solo=parreres' do
   it 'Deberia redireccionar al endpoint de error ya que el parametro solo es incorrecto cuando se requiere la sumatoria' do
     get '/fibonacci/8/sumatoria?solo=parreres'
     expect(last_response.redirect?).to be_truthy
   end
  end

  describe '/fibonacci/hola/sumatoria?solo=pares' do
    it 'Deberia redireccionar al endpoint de error ya que no se pasa un numero en la sumatoria' do
      get '/fibonacci/hola/sumatoria?solo=pares'
      expect(last_response.redirect?).to be_truthy
    end
  end

  describe '/fibonacci/hola' do
    it 'Deberia redireccionar al endpoint de error ya que no se pasa un numero para el calculo de Fibonacci' do
      get '/fibonacci/hola'
      expect(last_response.redirect?).to be_truthy
    end
  end

end