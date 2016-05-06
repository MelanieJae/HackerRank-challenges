
puts "Enter number of discs N:"
N = gets.strip.to_i
# 3
puts "Enter rod positions of discs, smallest to largest:"
# [1,4,1]
a = gets.strip
a = a.split(' ').map(&:to_i)

@counter = 0

#index in this case is disc size not rod position; the element of the array is rod position
# create another array to store disc position

disc = []
#last element in array is last disc at bottom of stack; ie first to be pushed onto rod 1

#create 2-D array with elements != 0 being the discs on the rod (weighted from 1 to N)
#(cols are disc stacks on a rod and rows are rod positions 1-4 (entry = 0 if no disc)

row1 = [0,0,0,0]
row2 = [1,0,0,0]
row3 = [3,0,0,2]

disc.push(row1)
disc.push(row2)
disc.push(row3)


if disc[row3[0]] == N
	if disc[row2[0]] != N-1
		movecounter = @counter + N		
	else
		movecounter = @counter + N - 1
	end
end

if disc[row3[0]] != N
	movecounter = @counter + N						
end
		
puts movecounter

