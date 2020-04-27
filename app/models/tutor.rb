class Tutor
attr_accessor :name 
@@all = []

def initialize(name)
    @name = name
    @@all << self 
end 
def self.all
    @@all
end 

def new_course(student, course_name)
    Course.new(self, student, course_name)
end 

def courses
    Course.all.select {|course| course.tutor == self}
end 

def students
    courses.map(&:student)
end 

end
