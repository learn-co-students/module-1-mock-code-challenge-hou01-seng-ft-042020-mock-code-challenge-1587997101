# require and load the environment file
require_relative '../config/environment.rb'

# # call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# require_relative 'app/models/class.rb'
# require_relative 'app/models/student.rb'
# require_relative 'app/models/tutor.rb'


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Student.new("Lili")
s2 = Student.new("Gaby")

t1 = Tutor.new("Maria")
t2 = Tutor.new("Jose")

c1 = Course.new(t1,s1,"Math")
c2 = Course.new(t2,s2,"English")
#c3 = Course.new(t1,s2,"Chemistry")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
