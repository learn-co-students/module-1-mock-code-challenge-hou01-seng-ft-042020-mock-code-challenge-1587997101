# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1 = Student.new("Luis")
s2 = Student.new("Alicia")
s3 = Student.new("Gavin")
t1 = Tutor.new("Mike")
t2 = Tutor.new("James")
t3 = Tutor.new("Lisa")
c1 = Course.new(t1,s1,"Math")
c2 = Course.new(t2,s1,"Gym")
c3 = Course.new(t3,s1,"Science")
c4 = Course.new(t1,s2,"Reading")
c5 = Course.new(t1,s3,"Code")
c6 = Course.new(t1,s1,"Code")


# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
