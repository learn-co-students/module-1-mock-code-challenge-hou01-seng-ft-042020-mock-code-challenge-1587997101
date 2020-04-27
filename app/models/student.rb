

# - `Student#initialize(name)`
# - `Student` is initialized with a name (string)
# - name **can be** changed after the `Student` is initialized
# - `Student#name`
# - returns the `Student`'s name
# - `Student.all`
# - returns an array of all the `Student` instances that have been initialized
# class Student
#     attr_accessor :name
#     @@all = []
#     def initialize(name)
#         @name = name
#         self.class.all << self
#     end 

#     def self.all
#         @@all
#     end
# end


# - `Student#classes`
#   - returns an array of all the `Class` instances for the `Student`.
# - `Student#tutors`
#   - returns an array of all of the `Tutor` instances that are tutoring the `Student`.
# Student#courses
# returns an array of all the Course instances for the Student.

##NOT DONE
# Student#tutors
# returns an array of all of the Tutor instances that are tutoring the Student.
# Student#enrolled_fulltime?
# returns true if the Student has enrolled for at least 3 Courses, returns false otherwise
class Student
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end 

    def self.all
        @@all
    end 

    def courses
        Course.all.select do |this_course|
            this_course.student == self
        end 
    end 

    def tutors
        self.courses.map do |this_course|
            this_course.tutor
        end 
    end 

    def enrolled_fulltime?(student_object)
        self.courses.size >= 3
    end 
end

