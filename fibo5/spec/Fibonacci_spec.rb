require 'rspec' 
require_relative '../model/Fibonacci'

describe 'fibonacci' do

  let(:fibonacci) { Fibonacci.new }  
   
  it 'Los 8 primeros numeros de Fibo deberia ser hasta el 13' do
    expect(fibonacci.getFibonacciTil(8)).to eq ([0, 1, 1, 2, 3, 5, 8, 13])
  end

end
