# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

stu1 = Student.new("Lauren")
stu2 = Student.new("Kristie")
stu3 = Student.new("Ava")

stu3.name
Student.all

tu1 = Tutor.new("Jireh")
tu2 = Tutor.new("Liv")

tu1.name
Tutor.all

course1 = Course.new(tu1, stu2, "Web Development")
course2 = Course.new(tu1, stu1, "Web Development")
course3 = Course.new(tu2, stu1, "Discrete Math")
course4 = Course.new(tu2, stu2, "Algorithms")
course5 = Course.new(tu2, stu3, "Calculus")
course6 = Course.new(tu1, stu2, "Calculus")

course3.course_name
course3.tutor
course3.student

Course.all

stu2.courses
stu2.tutors
stu2.enrolled_fulltime?
stu3.enrolled_fulltime?

tu2.courses
tu2.students
tu1.tutored_student?(stu3)
tu2.tutored_student?(stu3)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
