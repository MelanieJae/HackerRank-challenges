# # Task 
# # Write a Person class with an instance variable, ageage, and a constructor that takes an integer, initialAgeinitialAge, as a parameter. The constructor must assign initialAgeinitialAge to ageage after confirming the argument passed as initialAgeinitialAge is not negative; if a negative argument is passed as initialAgeinitialAge, the constructor should set ageage to 00 and print 𝙰𝚐𝚎 𝚒𝚜 𝚗𝚘𝚝 𝚟𝚊𝚕𝚒𝚍, 𝚜𝚎𝚝𝚝𝚒𝚗𝚐 𝚊𝚐𝚎 𝚝𝚘 𝟶.Age is not valid, setting age to 0.. In addition, you must write the following instance methods:

# # yearPasses() should increases the ageage instance variable by 11.
# # amIOld() should perform the following conditional actions:
# # If age<13age<13, print 𝚈𝚘𝚞 𝚊𝚛𝚎 𝚢𝚘𝚞𝚗𝚐.You are young.
# # If age≥13age≥13 and age<18age<18, print 𝚈𝚘𝚞 𝚊𝚛𝚎 𝚊 𝚝𝚎𝚎𝚗𝚊𝚐𝚎𝚛.You are a teenager.
# # Otherwise, print 𝚈𝚘𝚞 𝚊𝚛𝚎 𝚘𝚕𝚍.You are old.
# # To help you learn by example and complete this challenge, much of the code is provided for you, but you'll be writing everything in the future. The code that creates each instance of your Person class is in the main method. Don't worry if you don't understand it all quite yet!

# Note: Do not remove or alter the stub code in the editor.

# Input Format

# Input is handled for you by the stub code in the editor.

# The first line contains an integer, TT (the number of test cases), and the TT subsequent lines each contain an integer denoting the ageage of a Person instance.

# Constraints

# 1≤T≤41≤T≤4
# −5≤age≤30−5≤age≤30
# Output Format

# Complete the method definitions provided in the editor so they meet the specifications outlined above; the code to test your work is already in the editor. If your methods are implemented correctly, each test case will print 22 or 33 lines (depending on whether or not a valid initiaAgeinitiaAge was passed to the constructor).

# Sample Input

# 4
# -1
# 10
# 16
# 18
# Sample Output

# Age is not valid, setting age to 0.
# You are young.
# You are young.

# You are young.
# You are a teenager.

# You are a teenager.
# You are old.

# You are old.
# You are old.
# Explanation

# Test Case 0: initialAge=−1initialAge=−1 
# Because initialAge<0initialAge<0, our code must set ageage to 00 and print the "Age is not valid..." message followed by the young message. Three years pass and age=3age=3, so we print the young message again.

# Test Case 1: initialAge=10initialAge=10 
# Because initialAge<13initialAge<13, our code should print that the person is young. Three years pass and age=13age=13, so we print that the person is now a teenager.

# Test Case 2: initialAge=16initialAge=16 
# Because 13≤initialAge<1813≤initialAge<18, our code should print that the person is a teenager. Three years pass and age=19age=19, so we print that the person is old.

# Test Case 3: initialAge=18initialAge=18 
# Because initialAge≥18initialAge≥18, our code should print that the person is old. Three years pass and the person is still old at age=21age=21, so we print the old message again.

class Person
    attr_accessor :age
    def initialize(initialAge)
        if initialAge > 0
            age = initialAge
		else
			age = 0
			puts "Age is not valid, setting age to 0."
		end  
    end
    def amIOld()
      if age < 13
          answer = 'You are young.'
		elsif (age >= 13 and age < 18)
          answer = 'You are a teenager.'
		else
          answer = 'You are old.'
		end
        answer
    end
    
    def yearPasses()
       age += 1
	   age
    end
end

puts "enter string"
T=gets.to_i
for i in (1..T)do
    age=gets.to_i
    p=Person.new(age)
    p.amIOld()
    for j in (1..3)do
        p.yearPasses()
    end
    answer = p.amIOld
    puts "#{answer}"
end 