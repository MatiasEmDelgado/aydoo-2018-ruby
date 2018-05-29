require 'rspec' 
require_relative '../model/Fibonacci'

describe 'fibonacci' do

  let(:fibonacci) { Fibonacci.new }  
   
  it 'Los 8 primeros numeros de Fibonacci deberia ser hasta el 13' do
    expect(fibonacci.get_fibonacci_til(8)).to eq ([0, 1, 1, 2, 3, 5, 8, 13])
  end  

  let(:fibonacci) { Fibonacci.new }  
   
  it 'Deberia devolver Los 8 primeros numeros de Fibonacci en orden inverso' do
    expect(fibonacci.get_inverted_fibonacci(8)).to eq ([13, 8, 5, 3, 2, 1, 1, 0]) 
  end
  
  it 'Deberia devolver la suma de Los 8 primeros numeros de Fibonacci' do
    expect(fibonacci.get_fibonacci_sum(8)).to eq (33) 
  end
end
