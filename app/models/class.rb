class Course

    attr_accessor :student, :tutor

    @@all = []

    def initialize(tutor, student, course_name)
        @tutor = tutor
        @student = student
        @course_name = course_name
        @@all << self
    end

   
    def self.all
        @@all
    end


    def tutor
        Tutor.all.select {|tutor| tutor.course == self}
    end


    def students
        Student.all.select {|student| student.course == self}
    end

end
