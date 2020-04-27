# A student has many classes

class Student

    # getter & setter method for name
    attr_accessor :name

    # empty array that will hold all students
    @@all = []

    # method that will allows us to see all student instances in the array
    def self.all
        @@all
    end

    # method to push an instance into the array
    def save
        self.class.all << self
    end

    # initialize method that takes a name and saves the student into the array
    def initialize(name)
        @name = name
        save
    end

    # method to return an array of all course instances that the student is in
    def courses
        Course.all.select {|c| c.student == self}
    end

    # returns a unique array of all tutor instances that are tutoring the student
    def tutors
        courses.map {|c| c.tutor}.uniq
    end

    # returns true if student is enrolled in 3 or more courses otherwise returns false
    def enrolled_fulltime?
        if courses.length >= 3
            true
        else
            false
        end
    end
end
