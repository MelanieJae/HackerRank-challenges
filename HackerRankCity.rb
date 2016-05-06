# HackerRank City
# Difficulty: Moderate
# Hackerrank-city is an acyclic connected graph (or tree). Its not an ordinary place, the construction of the whole tree takes place in NN steps. The process is described below:

# It initially has 11 node.
# At each step, you must create 33 duplicates of the current tree, and create 22 new nodes to connect all 44 copies in the following H shape:
# nik2.png

# At each ithith step, the tree becomes 44 times bigger plus 22 new nodes, as well as 55 new edges connecting everything together. The length of the new edges being added at step ii is denoted by input AiAi.

# Calculate the sum of distances between each pair of nodes; as these answers may run large, print your answer modulo 10000000071000000007.

# Input Format

# The first line contains an integer, NN (the number of steps). The second line contains NN space-separated integers describing A0A0, A1,…,AN−2,AN−1A1,…,AN−2,AN−1.

# Constraints
# 1≤N≤1061≤N≤106
# 1≤Ai≤91≤Ai≤9

# Subtask 
# For 50%50% score 1≤N≤101≤N≤10
# Output Format

# Print the sum of distances between each pair of nodes modulo 10000000071000000007.

# N step=1 only current tree is created, finaledgesum is 29
# N step=2 current tree + 3 copies + 1 connector (2 nodes and 5 edges)

# Sample Input 0

# 1
# 1
# Sample Output 0

# 29
# Sample Input 1

# 2
# 2 1
# Sample Output 1

# 2641

class Tree
	def initialize()
		edgelength = nil
		connectoredgelength = nil
	end
#numhs = copies of H-shaped current tree in the whole tree
#Nsteps = input from user of number of tree construction steps, where each N step results in 1 tree having 
# four H-shaped current tree copies, 2 connector nodes and five connector edges
	
# total number of connector nodes = 2 for every step N, i.e. every four trees prior to connection of
# a second N step of tree construction bringing four more "H"s.
	def treeedgesum(nsteps,aih,aic)
		puts '****'
		puts aih
		puts aic
		puts "****"
		nodeposition = [1,2,3,4,5,6]
		@edgesum = 0
		# node distance within a tree
		@aih = aih
		# node-to-node distance within the connector 'H'
		@aic = aic
		@duv = 0
		# horiz node-to-node distance, can be =aih or aic
		@valht = aih
		@valhc = aic
		# vertical node-to-node distance, can be =aih or aic
		@valvt = aih
		@valvc = aic
		# for one H-shaped current tree, unconnected to any other copies...
		# distance between node u and node v is...
		 # e..g distance d(1,3) = 2 * |-1| = 2
		# (u-v) is num. of edges in shortest distance b/w the nodes u and v
		# aih is edge length between nodes in the current tree as inputted by the user

		# edgesum = sum of d(u,v)s for all possible combos of nodes
		
		# calculating sum of node distances within an H-shape
		nodeposition.each do |u|
			nodeposition.each do |v|
				# need u to not equal v and v to be greater than u so that node distances aren't counted twice 
				if v > u
					
					# odd nodes are on left, even on right so any transition from one to the other
					# requires at least one horizontal edge having edge value valh and at most 2
					# vertical edges having value @valv

					# odd u node and odd v node or even u node and even v node, same side of 'H', max = 2
					 	
					# combo of horiz and vertical moves (U shaped path or chair-shaped path)
					# u shaped path
					if (u == 1 and v == 2) or (u == 5 and v == 6)
						@duv =  (@valht + 2 * @valvt)  
						@edgesum = @edgesum + @duv 
					
					# chair-shaped path
					elsif (u == 1 and v == 6) or (u == 2 and v == 5) 
						@duv = (@valht + 2 * @valvt) 
						@edgesum = @edgesum + @duv 
					
					# horiz. or vert. move only
					elsif (u % 2 != 0 and v % 2 != 0) or (u % 2 == 0 and v % 2 == 0) or (u == 3 and v == 4)
						@duv = (u - v).abs
						@edgesum = @edgesum + @duv
					end
			
			
				end
			end
		end
		if nsteps > 1

		# adding connector node-to-node distance sum to get the final answer outputted to the user 
		@finaledgesum = ((@edgesum) + (nsteps - 1) * (4 * @valvc + @valhc)) % 1000000007

		return @finaledgesum	
	end



#inter-H distance calculator
#		d(u,v) = aih * (u-v).abs + aic * (x-y).abs
# every H current tree copy is the same so nodes will be in same place on each one.
# Need a sort to separate out edges that i know will always be tree connector node edges, so 


	attr_accessor :edgelength, :connectoredgelength
end

#A(i) H/h is the edge length on the current tree, i.e. one of the four H shaped tree copies
# that form the larger tree.
currenttree = Tree.new()
puts "What step of construction is this?\n (Note: step 1 is one current tree created, step 2 is currenttree + 3 copies of it + 1 connector (2 nodes, 5 edges), etc...)"
nsteps = gets.strip.to_i
puts "What is the tree node length?"
aih = gets.strip.to_i
puts "What is the connector node length?"
aic = gets.strip.to_i

answer = currenttree.treeedgesum(nsteps,aih,aic)
puts "The sum of the distances between nodes in the tree at N=#{nsteps} is #{answer}."


