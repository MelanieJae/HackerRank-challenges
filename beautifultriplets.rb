puts "Enter sequence"
input = gets.strip
@seq = input.split(',').map(&:to_i)

# seq = [1,2,4,5,7,8,10]
puts "Enter beautiful difference value 'd':"
@d = gets.to_i #beautiful difference

#distribution into likely i, j or k status arrays
@iarr = []
@jarr = []
@karr = []
@trip = []

@seq.each_index do |i|
	if @seq[i] < @d 
		@iarr.push(@seq[i])
	elsif (@seq[i] / @d) >= 1 and (@seq[i] / @d) <= 2
		@jarr.push(@seq[i])
	else
		@karr.push(@seq[i])
	end
end

# checking arrays to see if any entries could be Is, Js or Ks to anything else in the same
# array and move them to the proper array

@jarr.each_index do |j|
	if @jarr[j] - @jarr[0] >= 3
		@karr.push(@jarr[j])
		@karr.sort!
	end
end

@jarr.delete_if {|element| @karr.include? element}

#matching Js in a triple to Is....
@jarr.each_index do |j|
	@iarr.each_index do |i|
		
		if @jarr[j] - @iarr[i] == @d
			@trip.push(@iarr[i],@jarr[j])
		end
	end	
				
end

#matching Ks in a triple to the Js which have already been matched to Is
@karr.each do |k|
 	@jarr.each do |j|
 		if k - j = @d
 			@trip.push(k)			
 		end
 	end
end	


puts "The number of beautiful triplets in the sequence is: #{(@trip.length / @d).to_i}."
