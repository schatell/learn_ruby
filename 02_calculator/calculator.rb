#write your code here
def add (x, y)
	x + y
end

def subtract (x, y)
	x - y
end

def sum(array)
	array.inject(0, :+)
end

def multiply(array)
	array.inject(:*)
end

def power(x, y)
	x**y
end 

def factorial(n)
	if n == 0
		return 1
	else
		return n*factorial(n-1)
	end
end
