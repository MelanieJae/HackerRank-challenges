# **************** stub code ********
# 
# abc import imports the abc module (similar to the module import 'require ~/module.rb' in ruby), this module triggers an error reminding you to implement
# the abstract method by a subclass when the abstract class is instantiated so that the method can just be used as normal.
# so in this case, when Book is instantiated in the myBook subclass, an exception error pops up reminding you to implement display in myBook.

# The error looks something like this:

# "TypeError: Can't instantiate abstract class xxx with abstract method yyyy"

# ****** stub code do not change *********
from abc import ABCMeta, abstractmethod
class Book:
     __metaclass__ = ABCMeta
     def __init__(self,title,author):
         self.title=title
         self.author=author   
     @abstractmethod
     def display(): pass
# ******** stub code *******
class MyBook(Book):

	def __init__(self,title,author,price):
		self.price=price
		super(MyBook, self).__init__(title,author)

# abstract classes cannot be instantiated but they can be subclassed and the 
# subclasses can inherit @abstractmethods from the abstract class
# with abstract methods, the method is unbound and stored as a class attribute, meaning
# when you call the method it is initially unbound as a default and you have to first create an instance of the class and then pass that instance
# as the first argument if self is an argument of that method in the abstract class. Then you call the method like you would normally
# in an OOP language 
# in python 2 it must be an instance of the class it is an attribute of and then you pass the class, in python 3 it 
# can be anything. This is indicated by including 'self' as an argument in the class initialize function and the only argument
# in the only other method. 




# example:

# unbound method call: Book.display (does not conform to intialize loop arguments, must pass 'self')
# method call that binds all of the methods of the abstract class to an instance of the class so that you

# don't have to create an instance evry time and pass it before using the method:

# Book("The Alchemist", Coelho)).display() ---> this binds the display abstract method to an instance of class Book so the method display()
# is now bound and I can call it as I would normally because the self argument is now satisfied by passing the instance of Book
# that was created to bind the method.

#in python 3 this is no longer the case, they are just simple, implicitly bound functions if 'self' is required as an argument for the function.

# This myBook class must implement and override the display method because it is abstract and not doing so will raise an exception

	def display(self):
		print "Title:", title
		print "Author:", author
		print "Price:", price

	# MUST IMPLEMENT THIS!!!
	# you can use super in here just like in ruby if there is code in the abstract class' display method, which there isn't here but there can be.
	


# ********* stub code ********
print "What is the title of your book?"
title=raw_input()
print "Who is the author?"
author=raw_input()
print "What is the price of the book?"
price=int(raw_input())
new_novel=MyBook(title,author,price)
new_novel.display()
# ********* stub code *********