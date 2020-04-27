class Student
attr_accessor :name
@@all = []

def initialize(name)
    @name = name 
    @@all << self 

end

def self.all
    @@all
end 

def new_course(tutor, course_name)
    Course.new(tutor, self, course_name)
end 

def courses
    Course.all.select {|course| course.student == self}
end 

def tutors
    courses.map(&:tutor)
end 
end 
