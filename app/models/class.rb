# A class belong to tutor and student
class Course

    # getter & setter method for tutor, student, course_name
    attr_reader :tutor, :student, :course_name

     # empty array that will hold all courses
    @@all = []

    # method that will allows us to see all course instances in the array
    def self.all
        @@all
    end

    # method to push an instance into the array
    def save
        self.class.all << self
    end

    # initialize method that takes a tutor, student, and course_name and saves the tutor instance into the array
    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        save
    end
end
