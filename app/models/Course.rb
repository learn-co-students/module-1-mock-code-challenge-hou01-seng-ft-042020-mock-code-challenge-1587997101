class Course 
    # attr_reader
    # attr_writer
    attr_accessor :course_name

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
        self.find do |tutor|
            self.tutor == tutor
        end
    end

    def student
        self.find do |student|
            self.student == student
        end
    end
end
