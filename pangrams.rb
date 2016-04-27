#Difficulty: easy
# Pangrams

# Roy wanted to increase his typing speed for programming contests. So, his friend advised him to type the sentence "The quick brown fox jumps over the lazy dog" repeatedly, because it is a pangram. (Pangrams are sentences constructed by using every letter of the alphabet at least once.)

# After typing the sentence several times, Roy became bored with it. So he started to look for other pangrams.

# Given a sentence ss, tell Roy if it is a pangram or not.

# Input Format

# Input consists of a string ss.

# Constraints 
# Length of ss can be at most 103103 (1≤|s|≤103)(1≤|s|≤103) and it may contain spaces, lower case and upper case letters. Lower-case and upper-case instances of a letter are considered the same.

# Output Format

# Output a line containing pangram if ss is a pangram, otherwise output not pangram.

# Sample Input

# Input #1

# We promptly judged antique ivory buckles for the next prize    
# Input #2

# We promptly judged antique ivory buckles for the prize    
# Sample Output

# Output #1

# pangram
# Output #2

# not pangram
# Explanation

# In the first test case, the answer is pangram because the sentence contains all the letters of the English alphabet.
puts "enter sample input here"
ss = gets.chomp
arr = ss.split(//)
puts arr.to_s

def vowelcheck(chararray)
	vowel = ['a','e','i','o','u']
	countarrayv = [0,0,0,0,0,0,0]
	chararray.each do |x|
		if chararray[x] = v
			countarrayv[x] += 1	
		end
	counterarrcons1.each do |c|
		if c > 1
			cpancheck = false
		else

	end
return vpancheck
end

# def conscheck (chararray)
# 	#generally arranged in blocks but checks most common recurring consonants first to save time
# 	cons1 = [l,m,n,p,r,s,t]
# 	counterarrcons1 = [0,0,0,0,0,0,0]
# 	chararray.each_index do |x|
# 		if chararray[x] = cons1[x]
# 			counterarrcons1[x] += 1		
# 		end		
# 	end

# 	counterarrcons1.each do |c|
# 		if c > 1
# 			cpancheck = false
# 		else
# 			cons2 = [b,c,d,f,g,h,j]
# 			counterarrcons2 = [0,0,0,0,0,0,0]
# 			chararray.each_index do |x|
# 				if chararray[x] = cons2[x]
# 					counterarrcons2[x] += 1	
# 				end	
# 			end		
# 		end
# 	end
	
# 	cons3 = [q,k,v,w,x,y,z]


def output(vpancheck)
 	if vpancheck == true # and cpancheck == true
 	 	puts "This is a pangram"
 	else
 		puts "This is not a pangram"
 	end
end

vpancheck = vowelcheck(arr)
output(vpancheck)
# cpancheck = conscheck(arr)
# pangram = output(vpancheck,cpancheck)
#puts pangram
