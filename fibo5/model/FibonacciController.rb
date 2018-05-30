require_relative '../model/FibonacciFactory'
require_relative '../model/ParamsValidator'
require 'sinatra'
require 'sinatra/json'


['/fibonacci/:numero', '/fibonacci/:numero/lista'].each do |path|
  get  path do	
    unless (ParamsValidator.new.validate_params(params))
      redirect '/error'
    end
    numero = params[:numero].to_i
    fibonacci = FibonacciFactory.get_Fibonacci_instance(params[:solo].to_s)
    if (params[:sentido].to_s == 'inverso')
      fibonacciList = fibonacci.get_inverted_fibonacci(numero)
    else 
  	  fibonacciList = fibonacci.get_fibonacci_til(numero)
    end	
    json({"fibonacci": { "limite": numero, "lista": fibonacciList} })
  end
end

get '/fibonacci/:numero/sumatoria' do	
  numero = params[:numero].to_i
  fibonacci = FibonacciFactory.get_Fibonacci_instance(params[:solo].to_s)
  json({"fibonacci": { "limite": numero, "sumatoria": fibonacci.get_fibonacci_sum(numero)} })
end

get '/error' do
    status 400
    json({"error": "Opción no válida"})
end