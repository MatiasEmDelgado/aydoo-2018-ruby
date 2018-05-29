require_relative '../model/Fibonacci'

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