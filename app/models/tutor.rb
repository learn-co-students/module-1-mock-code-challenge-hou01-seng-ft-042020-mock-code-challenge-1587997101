class Tutor

    attr_accessor :name
    attr_reader :student, :course, :tutor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def classes
        Course.all.select {|tutor_classes| tutor_classes.tutor == self }
    end

    def students
        classes.map {|x| x.student}
    end

    def tutored_student?(student)
       Tutor.all.select {|student| student.tutor}
        #Course.tutor == self && Course.student == student
    end
  
end
