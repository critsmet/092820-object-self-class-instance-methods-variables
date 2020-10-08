require 'pry'


class Season
  # An instance variable is represented by the '@' symbol
  # We need to write something called a 'setter method' to 'set' the value of an attribute
  # We need to write something called a 'getter method' to retrieve the value of the attribute

  # Average temperature
  #Setter method:
  def average_temperature=(num)
    @average_temperature = num
  end

  #Getter method
  def average_temperature
    @average_temperature
  end

  # Name
  #Setter method
  def name=(str)
    #writing a method this way using the = sign is the convention for setter methods, ie when you're changing the value of an instance variable
    #we could've wrriten it like def name(str), but this is against convention when changing instance variable values
    @name = str
  end

  #Getter method
  def name
    @name
  end

  def start_date=(str)
    @start_date = str
  end

  def start_date
    @start_date
  end

  def end_date=(str)
    @end_date = str
  end

  # Start date
  # End date
  # Typical foods
  # Attire
  # Holidays
end

autumn = Season.new
autumn.name = "Autumn"
autumn.average_temperature = 45
autumn.start_date = "Sept 21"
autumn.end_date = "Dec 21"

summer = Season.new
#summer.id = The id number that the database has given it
summer.name = "Summer"
summer.average_temperature = 85
summer.start_date = "June 21"
summer.end_date = "September 20"
#
# | name | average_temperature | start_date | end_date |
#  "summer"     85



class Planet

  #All Ruby classes that we come up with look for a method called #initialize, which it will run immediately after we call .new on the class if it's there
  #Initialize takes in arguments in a specific order (in the future we'll learn how to do so that the order doesn't matter), and based on the order, assigns the arguments as the values to the instance variables

  #BELOW ARE ALL METHODS THAT CAN ONLY BE CALLED ON INSTANCES OF A PLANET

  def initialize(size="Medium", rotation="Clockwise", num_of_moons="1")
    #Although you do not have to include all possible instance variables in the initialize method, I would encourage you to account for all of them whether through requiring an argument or providing a default value
    @size = size
    @num_of_moons = num_of_moons
    @rotation = rotation
  end

  #A macro is a method or bit of code that writes code for you - metaprogramming

  #these attribute accessors, readers, and writers 1. define instance variables, and 2. depending on which use use, write our setter and getter methods for us

  #attr_reader :size, :num_of_moons, :rotation, :distance_from_sun, :age
  #attr_writer :size, :num_of_moons, :rotation, :distance_from_sun, :age
  attr_accessor :size, :num_of_moons, :rotation, :distance_from_sun, :age
  #FYI: Distance is in km

  # def size=(string)
  #   @size = string
  # end
  #
  # def size
  #   @size
  # end
  #
  # def num_of_moons=(num)
  #   @num_of_moons = num
  # end
  #
  # def num_of_moons
  #   @num_of_moons
  # end
  #
  # def rotation=(str)
  #   @rotation = str
  # end
  #
  # def rotation
  #   @rotation
  # end
  #
  # def distance_from_sun=(num)
  #   @distance_from_sun = num
  # end
  #
  # def distance_from_sun
  #   @distance_from_sun
  # end

end

#Constructor method: creating a new instance of a class
earth = Planet.new("Small", "Clockwise", 3)
#The constructor method .new will look for a method called initialize and if it finds it, it will call it.
# earth.initialize("Small", "Clockwise", 3)

earth.rotation
earth.rotation = "Counterclockwise"
#new is a class method




class User

  @@all = []

  attr_accessor :username, :email, :password, :age, :bio, :img_url

  def initialize(username="", email="", password="", age=18, bio="I'm a human...maybe?", img_url="")
    @username = username
    @email = email
    @password = password
    @age = age
    @bio = bio
    @img_url = img_url
  end

  #Methods that DO NOT start with 'self.' are instance methods, and can only be called on instances

  def birthday
    @age += 1
  end

  def about_me
    "Hi, my username is #{@username}. I am #{@age} years old. My password is...just kidding. A little about me: #{@bio}"
  end

  def save
    #when you are inside of an instance method, if you want to reference the instance that you're calling this method on (for example chris.save, I'd be calling #save on the 'chris' instance), you use the word 'self'
    #self is the keyword that references the instance you are calling the method on in instance methods
    @@all << self
    self
    #Class variables are available to instances BECAUSE they are instances of the class.
    #Instance variables ARE NOT available to the class because classes cannot be individual instances
  end

  #Class methods are written by putting 'self.' in front of the name of the method
  #Methods that DO start with 'self.' are class methods, and can only be called on the class

  def self.all
    @@all
  end

  def self.average_user_age
    @@all.inject(0) do |sum, user|
      sum + user.age
    end  / self.all.length

    # total = 0
    # self.all.each{|user| total + user.age}
    # total / self.all.length
  end

end

chris = User.new("christo", "chris@gmail.com", 123, 27, "I'm a Software Engineering teacher", "http://some.com/.gif").save

diego = User.new("Diego", "diego@gmail.com", 321, 35, "Designer", "http://some.com/.gif").save

binding.pry













#
