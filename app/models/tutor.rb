# A tutor has many classes

class Tutor

    # getter & setter method for name
    attr_accessor :name

    # empty array that will hold all tutors
    @@all = []

    # method that will allows us to see all tutor instances in the array
    def self.all
        @@all
    end

     # method to push an instance into the array
    def save
        self.class.all << self
    end

     # initialize method that takes a name and saves the tutor instance into the array
    def initialize(name)
        @name = name
        save
    end

     # method to return an array of all course instances that the tutor is tutoring for
    def courses
        Course.all.select {|c| c.tutor == self}
    end

    # returns a uniq array of all student instances that the tutor is tutoring
    def students
        courses.map {|c| c.student}.uniq
    end

    # takes an arugment of student and returns true if the tutor has tutored the student otherwise returns false
    def tutored_student?(student)
        students.any? {|stu| stu == student}
    end
  
end
