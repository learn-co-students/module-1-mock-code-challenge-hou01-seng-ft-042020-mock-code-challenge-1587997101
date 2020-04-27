class Course
    attr_accessor :tutor, :student, :class_name

    @@all = []

    def initialize(tutor,student,class_name)
        @tutor = tutor
        @student = student
        @class_name = class_name
        @@all << self
    end

    def self.all
        @@all
    end
end
