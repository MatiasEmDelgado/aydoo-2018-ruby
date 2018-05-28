class Fibonacci

  def getFibonacciTil(n)
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

  #def fibonacciProgretion(n)
  #	i = 0
  #	n.times do
  #		getFibonacciTil(i)
  #		i+=1
  #	end
  #end
end
