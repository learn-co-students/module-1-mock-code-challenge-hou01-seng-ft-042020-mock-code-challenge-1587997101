# require and load the environment file
require_relative '../config/environment.rb'


# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console




t1 = Tutor.new ("Tike")
t2 = Tutor.new ("Tohn")
t3 = Tutor.new ("Tyle")
s1 = Student.new ("Steve")
s2 = Student.new ("Stoven")
s3 = Student.new ("Stavey")
# c1 = Course.new (t1, s1, "Bio")
# c2 = Course.new ("Tike", "Stoven", "Eng")
# c3 = Course.new ("Tike", "Stavey", "Sci")
# c4 = Course.new ("Tohn", "Steve", "Bio")
# c5 = Course.new ("Tohn", "Stoven", "Eng")
# c6 = Course.new ("Tohn", "Stavey", "Sci")
# c7 = Course.new ("Tyle", "Steve", "Bio")
# c8 = Course.new ("Tyle", "Stoven", "Eng")
# c9 = Course.new ("Tyle", "Stavey", "Sci")





# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
