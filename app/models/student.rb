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
        Course.all.select {|course| course.student == self}
    end

    def tutors
        Tutor.all.select {|tutor| tutor.student == self}
    end


    def enrolled_fulltime?
        if self.courses.count >= 3
            true
        else false
        end
    end

end
