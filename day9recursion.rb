
def factorial(n)
	if n == 1
		factn = 1
		return factn
	 
	else
		factn = n * factorial(n-1)
		return factn
	end	
end
 

puts "enter an integer"
n = gets.to_i
answer = factorial(n)	
puts answer



