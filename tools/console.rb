# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

s1= Student.new(name: "Stephanie")
s2= Student.new(name: "Mark")
s3= Student.new(name: "Elijah")
s4= Student.new(name: "Owen")
s5= Student.new(name: "Claudia")

t1=Tutor.new(name: "Mr. Clean")
t2=Tutor.new(name: "Mr. Helper")
t3=Tutor.new(name: "Mrs. A")
t4=Tutor.new(name: "Mrs. Knowledge")
t5=Tutor.new(name: "Mr. Right")

c1= Course.new(tutor: t1, student: s1, course_name: "Science")
c2= Course.new(tutor: t2, student: s3, course_name: "Writing")
c3= Course.new(tutor: t3, student: s3, course_name: "Reading")
c4= Course.new(tutor: t4, student: s3, course_name: "Math")
c5= Course.new(tutor: t2, student: s5, course_name: "Social Studies")
c6= Course.new(tutor: t5, student: s1, course_name: "PE")
c7= Course.new(tutor: t3, student: s1, course_name: "Music")






# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
