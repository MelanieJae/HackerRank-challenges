# only thing that determines winning strategy is the creation of an edge that allows coins to be moved to the root
# as opposed to the coins themselves, so only an edge class is created.
class Edge

	def initialize(startnode,endnode)
		@startnode = startnode
		@endnode = endnode
	end

	def create_edge(u,v)
		edgeuvstatus = true
		if u == 1 or v == 1
			winstrategy = true	
		else
			winstrategy = false
		end
	return winstrategy
	end

	def break_edge(u,v)
		if v == rootparent
			disconnectfromroot == true
			treestatus == false
			qstatus == invalid
		else
			disconnectfomroot = false
			qstatus = valid
			edgeuvstatus = false

		end
	return qstatus
	end
end

puts "How many nodes are there?"
# 6
i = gets.to_i
puts "How many coins in each node i?"
coins = gets
coinarray = coins.split(',').map(&:to_i)

puts "Enter node endpoints"
endpts = gets
epts = endpts.split(',').map(&:to_i)
epts.each do |i|
	@edge = []
	newedge = Edge.new(i,i+1)
	@edge.push(newedge)
end


qstatusyn = @edge.break_edge(a,b)
winstrategy = @edge.create_edge(a,b)
if qstatus = invalid
	puts "INVALID"
else		 
	if winstrategyyn == true
		puts "YES"
	else
		puts "NO"
	end
end