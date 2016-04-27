# Watson gives Sherlock an array AA of length NN. Then he asks him to determine if there exists an element in the array such that the sum of the elements on its left is equal to the sum of the elements on its right. If there are no elements to the left/right, then the sum is considered to be zero. 
# Formally, find an ii, such that, AA1+A+A2...A...Ai-1 =A=Ai+1+A+Ai+2...A...AN.

# Input Format 
# The first line contains TT, the number of test cases. For each test case, the first line contains NN, the number of elements in the array AA. The second line for each test case contains NN space-separated integers, denoting the array AA.

# Output Format 
# For each test case print YES if there exists an element in the array, such that the sum of the elements on its left is equal to the sum of the elements on its right; otherwise print NO.

# Constraints 
# 1≤T≤101≤T≤10 
# 1≤N≤1051≤N≤105 
# 1≤A1≤Ai ≤2×104≤2×104 
# 1≤i≤N

#sample input
# 2
# 3
# 1 2 3
# 4
# 1 2 3 3

# puts "enter # of test cases"
# tt = gets
# puts "enter length of array"
# arrlen1 = gets
puts "enter array elements"
l1 = gets.strip
# puts "enter length of another array"
# arrlen2 = gets
# puts "enter array elements of second array"
# l2 = gets.strip

arr1 = Array.new()
# arr2 = Array.new()
arr1 = l1.split.map(&:to_i)
# arr2 = l2.split.map(&:to_i)


#calc sums of arrays

def sumarray(arr)       
    sum = 0
    arr.each do |i|
        sum += i
    end
	sum    
end

def sumcompare(sum,arr)
	sumleft = 0
	sumright = 0
	
	arr.each_index do |i| 		
		left = Array.new()
		right = Array.new()
		left = []
		right = []
		left = arr.slice(i-1..i)
		right = arr
		

		if i == 0
			sumleft
			sumright = sumarray(right)
		elsif i == arr.length - 1
			sumleft = sumarray(left)
			sumright
		end

		puts left
		puts '----'
		puts right
		puts '----'
		puts sumleft
		puts '----'
		puts sumright
		puts '----'
		puts '----'
		
		
	end

	if sumleft == sumright
	   	true
	else
	    false
	end
	
end

# def output(compare)
# 	if compare
# 		puts "YES"
# 	else
# 		puts "NO"
# 	end 
# end


sum1 = sumarray(arr1)
# sum2 = sumarray(arr2)
compare1 = sumcompare(sum1,arr1)
# compare2 = sumcompare(sum2,arr2)
puts compare1
# puts compare2

# output(compare1)
# output(compare2)


