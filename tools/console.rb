# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

t1 = Tutor.new("Krysta")
t2 = Tutor.new("Mary")
t3 = Tutor.new("Eddie")
t4 = Tutor.new("Phil")
t5 = Tutor.new("Heather")

s1 = Student.new("Josh")
s2 = Student.new("Paisley")
s3 = Student.new("Felicia")
s4 = Student.new("Ana")
s5 = Student.new("Mia")
s6 = Student.new("Finn")

c1 = Course.new(t1, s1, "Math")
c2 = Course.new(t2, s2, "Science")
c3 = Course.new(t3, s5, "English")
c4 = Course.new(t1, s1, "Global")
c5 = Course.new(t4, s3, "Reading")
c6 = Course.new(t1, s1, "Writing")
c7 = Course.new(t5, s2, "Wood Shop")
c8 = Course.new(t4, s1, "Computer Science")
c9 = Course.new(t4, s4, "Photo")
c10 = Course.new(t1, s2, "Math")


s1_courses = s1.courses




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
