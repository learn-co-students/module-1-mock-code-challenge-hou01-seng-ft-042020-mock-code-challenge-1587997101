# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

esther = Student.new("Esther")
james = Student.new("James")
tom = Student.new("Tom")

math_tutor = Tutor.new("Math_tutor")
english_tutor = Tutor.new("English_tutor")

math1 = Course.new(math_tutor, esther)
math2 = Course.new(math_tutor, james)
english1 = Course.new(english_tutor, esther)
english2 = Course.new(english_tutor, james)
math3 = Course.new(math_tutor, tom)
math4 = Course.new(math_tutor, esther)
math5 = Course.new(math_tutor, esther)





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0