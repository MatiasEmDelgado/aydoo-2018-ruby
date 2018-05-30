require 'rspec' 
require_relative '../model/EvenFibonacci'

describe 'fibonacci' do

  let(:fibonacci) { EvenFibonacci.new }  
   
  it 'Los numero pares entre los 8 primeros numeros de Fibonacci deberian ser el 2 y el 8' do
    expect(fibonacci.get_fibonacci_til(8)).to eq ([2, 8])
  end  
   
  it 'Los numero pares entre los 8 primeros numeros de Fibonacci en orden inverso deberian ser el 8 y el 2 ' do
    expect(fibonacci.get_inverted_fibonacci(8)).to eq ([8, 2]) 
  end
  
  it 'Deberia devolver la suma de Los numeros pares entre los 8 primeros numeros de Fibonacci' do
    expect(fibonacci.get_fibonacci_sum(8)).to eq (10)
  end
end