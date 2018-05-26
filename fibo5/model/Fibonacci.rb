class Fibonacci

  def getFibonacciTil(n)
  	first = 0
  	second = 1
  	third = 0
    arrayFibonacciValues = Array.new()
    #arrayFibonacciValues.inject([0, 1]) {|fib| fib << fib.last(2).inject(:+)}
    n.times do
    	arrayFibonacciValues.push(third)
    	first= second
    	second = third
    	third = first+second
    end	
    arrayFibonacciValues
  end

end
