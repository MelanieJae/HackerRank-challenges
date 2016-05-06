
cloudbin = [0,0,0,0,1,0]
newcloudpos = 0
@jumpcounter = 0 
@numcloud = 6

cloudbin.each_index do |i|
	if i >= newcloudpos and i < @numcloud
		if cloudbin[i+1] == 1 and cloudbin[i+2] == 0
			@jumpcounter = @jumpcounter + 1
			newcloudpos = i + 2
		end
		
		if cloudbin[i+1] == 0 and cloudbin[i+2] == 1
			@jumpcounter = @jumpcounter + 1
			newcloudpos = i + 1
		end

		if cloudbin[i+1] == 0 and cloudbin[i+2] == 0
			@jumpcounter = @jumpcounter + 1
			newcloudpos = i + 2
						
		end	
		
	end 
	
end

puts @jumpcounter