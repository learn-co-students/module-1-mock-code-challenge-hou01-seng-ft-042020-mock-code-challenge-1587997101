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

    def courses
        Course.all.select {|course| course.tutor == self}
    end

    def students
        Student.all.select {|student| student.tutor == self}
    end


    def tutored_student?(student)
        if student.tutor == self
            true 
        else false
        end
    end


  
end
