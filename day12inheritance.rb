class Person

	def initialize(firstName, lastName, id)
		@firstName = firstName
		@lastName = lastName
		@id = id
	end
	
	def printPerson()
		print("Name: ",@lastName , ", " + @firstName ,"\nID: " , @id)
	end

end

class Student < Person

	def initialize(firstName, lastName, id, scores)
		super(firstName, lastName, id)
		@scores = scores
	end


	def calculate()
		sum = 0
		@scores.map!(&:to_i)
		@scores.each do |s|
			sum = sum + s
		end
		a = sum / @scores.length

		if a >= 90 and a <= 100
			grade = 'O'
		elsif 
			a >= 80 and a < 90
			grade = 'E'
		elsif
			a >= 70 and a < 80
			grade = 'A'
		elsif 
			a >= 55 and a < 70
			grade = 'P'
		elsif
			a >= 40 and a < 55
			grade = 'D'
		else
			grade = 'T'	
		end
	return grade
	end
end

puts "please enter name and id"
input = gets.split()
firstName = input[0]
lastName = input[1]
id = input[2].to_i
puts "please enter number of scores"
numScores = gets.to_i
puts "please enter scores"
scores = gets.split()
scores.each do |v|
	score = Integer(v)
end
s = Student.new(firstName, lastName, id, scores)
s.printPerson           
print("\nGrade: + #{s.calculate}")