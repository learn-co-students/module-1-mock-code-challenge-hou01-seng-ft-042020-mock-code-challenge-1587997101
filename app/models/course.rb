class Course
    attr_reader :course_name , :student , :tutor
    @@all = []


    def initialize(t,s,course_name)
        @student = s
        @tutor = t
        @course_name = course_name
        @@all << self
    end

    def self.all
        @@all
    end







end
