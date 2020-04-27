# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console



student1 = Student.new("freddy")
student2 = Student.new("rick")
student3 = Student.new("jack")


tutor1 = Tutor.new("Mr.Flores")
tutor2 = Tutor.new("Mr.Anderson")
tutor3 = Tutor.new("Mr.Johnson")

class1 = Course.new(tutor1, student1, "CS")
class2 = Course.new(tutor1, student2, "CS")
class3 = Course.new(tutor2, student1, "CS")
class4 = Course.new(tutor3, student3, "CS")
class5 = Course.new(tutor3, student1, "CS")




# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
