require_relative 'Fibonacci'

class EvenFibonacci < Fibonacci

  def get_fibonacci_til(n)
  	first = 0
  	second = 1
  	third = 0
    arrayFibonacciValues = Array.new()
    n.times do
      if (third != 0 && third % 2 == 0)
    	  arrayFibonacciValues.push(third)
    	end
      first= second
    	second = third
    	third = first+second
    end	
    arrayFibonacciValues
  end
end