class Student
    attr_accessor :name, :course, :tutor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def classes
        Course.all.select {|student_classes| student_classes.student == self}
    end

    def tutors
        classes.map {|x| x.tutor}
    end

    def enrolled_fulltime?
        Course.all.count >= 3 && Student.name == self
    end
end
