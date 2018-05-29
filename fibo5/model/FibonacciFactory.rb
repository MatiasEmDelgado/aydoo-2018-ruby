require_relative '../model/Fibonacci'
require_relative '../model/EvenFibonacci'

class FibonacciFactory

  def self.get_Fibonacci_instance(solo)
  	case solo
    when 'pares'
      EvenFibonacci.new
    else
      Fibonacci.new
    end
  end
end   