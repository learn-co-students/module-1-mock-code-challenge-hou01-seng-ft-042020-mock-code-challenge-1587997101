require "pry"

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

    def courses
        Course.all.select {|class_list| class_list.student == self}
    end

    def tutors
       courses.map {|course| course.tutor}.uniq
    end

    def enrolled_fulltime?
        # returns true if the student has enrolled for at least 3 courses
        # returns false otherwise
        if courses.count >= 3
            return true
        else
            return false
        end
    end

    def courses_by_name
        courses.map {|course| course.course_name}
    end

    def tutors_by_name
        tutors.map {|tutor| tutor.name}
    end

end
