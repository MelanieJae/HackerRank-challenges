# Angry Children 2   
# Success Rate: 52.25% Max Score: 50 Difficulty: Difficult

# ****time to complete was approx 7 hrs*****
# Bill Gates is on one of his philanthropic journeys to a village in Utopia. He has N packets of candies and would like to distribute one packet to each of the K children in the village (each packet may contain different number of candies). To avoid a fight between the children, he would like to pick K out of N packets such that the unfairness is minimized.

# Suppose the K packets have (x1, x2, x3,....xk) candies in them, where xi denotes the number of candies in the ith packet, then we define unfairness as

# image1

# where |a| denotes the absolute value of a.

# Input Format 
# The first line contains an integer N. 
# The second line contains an integer K. 
# N lines follow each integer containing the candy in the ith packet.

# Output Format 
# A single integer which will be minimum unfairness.

# Constraints 
# 2<=N<=105 
# 2<=K<=N 
# 0<= number of candies in each packet <=109

# Sample Input #00

# 7
# 3
# 10
# 100
# 300
# 200
# 1000
# 20
# 30
# Sample Output #00

# 40
# Explanation #00

# Bill Gates will choose packets having 10, 20 and 30 candies.So unfairness will be |10-20| + |20-30| + |10-30| = 40. We can verify that it will be minimum in this way.

# Sample Input #01

# 10
# 4
# 1
# 2
# 3
# 4
# 10
# 20
# 30
# 40
# 100
# 200
# Sample Output #01

# 10
# Explanation #01

# Bill Gates will choose 4 packets having 1,2,3 and 4 candies. So, unfairness will be |1-2| + |1-3| + |1-4| + |2-3| + |2-4| + |3-4| = 10


 

# Enter your code here. Read input from STDIN. Print output to STDOUT

puts "total number N of packets"
n = gets.to_i
puts "number K of chosen packets"
@k = gets.to_i

# @candies = [10,100,300,200,1000,20,30]
@candies = [1,2,3,4,10,20,30,40,100,200]
#@candies.sort = [10,20,30,100,200,300,1000]

def minunfair(array)
# #feed candy array info into here and re-distribute to minimize unfairness factor
 	diff = []
 	final = []
 	
 	array.each_index do |i|
 		if i < array.length - 1
 		 	diff1 = (array[i] - array[i+1]).abs
			diff.push(diff1)
		end
 	end
 	puts array.sort.to_s
 	puts diff.sort.to_s
 	unfair = 0
 	sumdiff = diff[0]
 	sum = 0
 	diff.each_index do |i| 		
		
		if i < @k - 2
			final.push(diff[i])
			sumdiff = sumdiff + diff[i] + diff[i+1]
			final.push(sumdiff)
		end
	end

 	final.each do |i|
 		sum = sum + i
 		unfair = sum
 	end
	return unfair
end
# Computer answer from n,k,candies    

# sorted = sortarray(@candies)
# puts sorted
answer = minunfair(@candies.sort)
puts answer
# puts answer
# unfairindex = sortdiff(answer)
# puts unfairindex
