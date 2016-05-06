public

#  Objective 
# Today, we're working with binary numbers. Check out the Tutorial tab for learning materials and an instructional video!

# Task 
# Given a base-1010 integer, nn, convert it to binary (base-22). Then find and print the base-1010 integer denoting the maximum number of consecutive 11's in nn's binary representation.

# Input Format

# A single integer, nn.

# Constraints

# 1≤n≤1061≤n≤106
# Output Format

# Print a single base-1010 integer denoting the maximum number of consecutive 11's in the binary representation of nn.

# Sample Input 1

# 5
# Sample Output 1

# 1
# Sample Input 2

# 13
# Sample Output 2

# 2
# Explanation

# Sample Case 1: 
# The binary representation of 55 is 101101, so the maximum number of consecutive 11's is 11.

# Sample Case 2: 
# The binary representation of 1313 is 11011101, so the maximum number of consecutive 11's is 22.

puts "enter base-10 integer"
base10 = gets.to_i
@consec1s = 0
# @stored consecs is only used when there is more than one set of consecutive ones sep. by zeros.
@storedconsec1s = 0

def conv2binary(integer)
	#array of binary digits for the number (nth entry is digit for 2^n) but in reverse of typical binary string rep.
	@binreparr = []
	# the binary digit for 2^n for the largest power of two number will always be 1 otherwise there would either be a subsequent digit or no digit for 2^n.
	# push that last 1 to the binreparray last.
	n = (Math.log2(integer)).to_i


	
	#calculating binary digits for 2^0 when n < 2...
	if integer % 2 == 0
		twozeroth = 0
	else
		twozeroth = 1
	end 
	
	@binreparr.push(twozeroth)

	#calculating binary digits for 2^n where n>= 2...
	if n >= 2
	
		blockval = integer - 2**n - twozeroth
			
	 		for p in n.downto(1) do
	 			if blockval >= 2**(p-1)
		 			@binreparr[p] = 1
		 			@consec1s += 1
		 		else
		 			@binreparr[p] = 0
		 		end	
				
				if p <= n-1	 		
					blockval = blockval - 2**p
				end	
				
			end
			
		 		
		end

	# push of nth binary digit (always 1 as discussed above if it's present) last so that it's at the end of the binary digit array
	@binreparr[n] = 1
	

	@binreparr.each_index do |i|
		if twozeroth == 1
			@consec1s += 1
		end

		if i >= 1
			if @binreparr[i - 1] == 1 and @binreparr[i] == 1
				@consec1s += 1
			else
				# want to store the existing amount of consec 1s since you don't know if it will be surpassed, and resets the consec counter sinec the next entry is zero
				# but the one after it may restart the counter. This allows for multiple groups of consec. 1s separated by zeros in the binary string.
				@storedconsec1s = @consec1s
				@consec1s = 0
			end
		end
	end 
	
	if @storedconsec1s > @consec1s
		@consec1s = @storedconsec1s
	else
		@consec1s
	end

end	 	
maxconsec1s = conv2binary(base10)
puts @binreparr.to_s 
puts "The maximum # of consecutive ones in #{base10} is #{maxconsec1s}."