# require and load the environment file
require_relative '../config/environment.rb'
 
# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
s1=Student.new("Rim")
s2=Student.new("Jim")
s3=Student.new("Dim")

t1=Tutor.new("Ron")
t2=Tutor.new("Don")
t3=Tutor.new("Jon")

c1=Course.new("Math", s1, t2)
c2=Course.new("Math", s3, t3)
c3=Course.new("Math", s2, t1)








# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
