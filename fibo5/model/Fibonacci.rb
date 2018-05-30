class Fibonacci

  def get_fibonacci_til(n)
  	first = 0
  	second = 1
  	third = 0
    arrayFibonacciValues = Array.new()
    n.times do
    	arrayFibonacciValues.push(third)
    	first= second
    	second = third
    	third = first+second
    end	
    arrayFibonacciValues
  end

  def get_inverted_fibonacci(n)
    get_fibonacci_til(n).reverse
  end

  def get_fibonacci_sum(n)
    get_fibonacci_til(n).inject(0){|sum,x| sum + x }
  end  

end
