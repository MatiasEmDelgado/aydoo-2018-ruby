require_relative '../model/FibonacciFactory'
require 'sinatra'
require 'sinatra/json'

get '/fibonacci/:numero' do	
  numero = params[:numero].to_i
  fibonacci = FibonacciFactory.get_Fibonacci_instance(params[:solo].to_s)
  if (params[:sentido].to_s == 'inverso')
    fibonacciList = fibonacci.get_inverted_fibonacci(numero)
  else 
  	fibonacciList = fibonacci.get_fibonacci_til(numero)
  end	
  json({"fibonacci": { "limite": numero, "lista": fibonacciList} })
end  

get '/fibonacci/:numero/sumatoria' do	
  numero = params[:numero].to_i
  fibonacci = FibonacciFactory.get_Fibonacci_instance(params[:solo].to_s)
  json({"fibonacci": { "limite": numero, "sumatoria": fibonacci.get_fibonacci_sum(numero)} })
end