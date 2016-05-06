puts "enter string:"
s = gets.chomp
arr = []
arr = s.scan /\w/

arr.each_index do |i|
    @arreven = arr[0]
    @arrodd = arr[1]
    if i > 1
    	if i % 2 == 0
        	@arreven.concat( arr[i] )
    	else
    		@arrodd.concat( arr[i] )
    	end	
    end
end

puts "#{@arreven} #{@arrodd}"

T=gets.to_i
for i in (1..T)do
    age=gets.to_i