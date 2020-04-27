# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
student_1 = Student.new("Cole")
student_2 = Student.new("Maria")
student_3 = Student.new("Joe")

tutor_1 = Tutor.new("Sally")
tutor_2 = Tutor.new("Duane")
tutor_3 = Tutor.new("Nick")

c_1 = Course.new(tutor_1, student_1, "Software Engineering")
c_2 = Course.new(tutor_2, student_2, "Data Science")
c_3 = Course.new(tutor_3, student_3, "Comedic Science")
c_4 = Course.new(tutor_3, student_1, "Comedic Science")
c_5 = Course.new(tutor_3, student_1, "Astrology")

# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
