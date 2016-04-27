# A Decent Number has the following properties:

# Its digits can only be 3's and/or 5's.
# The number of 3's it contains is divisible by 5.
# The number of 5's it contains is divisible by 3.
# If there are more than one such number, we pick the largest one.

# Input Format

# The first line is an integer, TT, denoting the number of test cases.

# The TT subsequent lines each contain an integer, NN, detailing the number of digits in the number.

# Output Format

# Print the largest Decent Number having NN digits; if no such number exists, tell Sherlock by printing -1.

# Sample Input

# tc = 4
# numdig = 1
# numdig = 3
# numdig = 5
# numdig = 11
# Sample Output

# -1
# 555
# 33333
# 55555533333


puts "enter number of test cases"

t = gets.strip.to_i

# for a0 in (0..t-1)

# end
a0 = Array.new(t)

a0 = "135".split('').map(&:to_i)
a0.push(11)
puts a0
@nullnum = -1

a0.each do |n|
	dig = [0,1,2,3,4,5,6,7,8,9]
	dnum = []
	finaldnumarr = []
	counter3 = 0
	counter5 = 0
	n.times do
		dig.each do |d|
			if d == 3 or d == 5 
				if d == 5
					counter5 += 1
					dnum.push(d)
				elsif d == 3
					counter3 += 1
					dnum.push(d)
				end
				
				if counter3 % 5 == 0
					finaldnumarr.push(dnum)
					puts '******'
					puts finaldnumarr.to_s
					puts '******'
				else
					puts @nullnum
				end

				if counter5 % 3 == 0
					finaldnumarr.push(dnum)
					puts '******'
					puts finaldnumarr.to_s
					puts '******'
				else
					puts @nullnum
				end
			end
		end
	puts '------'
	puts finaldnumarr.to_s
	end
end





