public


arr = [[1,1,1,0,0,0],[0,1,0,0,0,0],[1,1,1,0,0,0],[0,0,2,4,4,0],[0,0,0,2,0,0],[0,0,1,2,4,0]]
# arr = Array.new(6)
# for arr_i in (0..6-1)
#     arr_t = gets.strip
#     arr[arr_i] = arr_t.split(' ').map(&:to_i)
# end

@hourentryarr = []


@hoursum = 0
@resultarr = []
@sums = []
maxsum = 0

#find highest value array entries and their hourglasses and then compare
def hourglass(array)
	array.each_index do |i|
		array[i].each_index do |j|
			sumtop = 0
			sumbottom = 0
			sum = 0
				if i > 0 and i < array.length - 1
					if j > 0 and j < array.length - 1
						x = array[i].sort.last
						if array[i][j] == x 
							sumtop = array[i-1][j-1] + array[i-1][j] + array[i-1][j+1]
							sumbottom = array[i+1][j-1] + array[i+1][j] + array[i+1][j+1]
							sum = sumtop + x + sumbottom
							puts "i = #{i}, j= #{j}, x=#{x}, sumtop=#{sumtop}, sumbottom=#{sumbottom}, sum=#{sum}"					
							@resultarr.push(sum).push(i).push(j)
						end
					end
				end
		end
	end
	return @resultarr
end

def maxhoursum(sumposarray)
	
	sumposarray.each_index do |i|		
		if i == 0 or i % 3 == 0
			@sums.push(sumposarray[i])
		end
	
	end
	puts @sums.to_s
	@sums.each_index do |s|
		if s > 1 and
			if @sums[s] > @sums[s - 1] or @sums[s + 1] > @sums[s - 1]
				maxsum = @sums[s]
				@sums.each do |x|
					if x > maxsum
						maxsum = x
					end					
				end
			else
				maxsum
			end
			return maxsum
		end		
	end
end

#resultarray format is: each row is an array of [hourglass sum, neckrow, neckcol]
resultarray = hourglass(arr)
answer = maxhoursum(resultarray)
puts answer
# sumhour = sum_hourglass(hoursumarray)
# puts sumhour


# Output Format

# Print the largest (maximum) hourglass sum found in A.

# Sample Input

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 2 4 4 0
# 0 0 0 2 0 0
# 0 0 1 2 4 0
# Sample Output

# 19
# Explanation

# A contains the following hourglasses:

# 1 1 1   1 1 0   1 0 0   0 0 0
#   1       0       0       0
# 1 1 1   1 1 0   1 0 0   0 0 0

# 0 1 0   1 0 0   0 0 0   0 0 0
#   1       1       0       0
# 0 0 2   0 2 4   2 4 4   4 4 0

# 1 1 1   1 1 0   1 0 0   0 0 0
#   0       2       4       4
# 0 0 0   0 0 2   0 2 0   2 0 0

# 0 0 2   0 2 4   2 4 4   4 4 0
#   0       0       2       0
# 0 0 1   0 1 2   1 2 4   2 4 0

# The hourglass with the maximum sum (19) is:

# 2 4 4
#   2
# 1 2 4