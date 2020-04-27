class Tutor
    attr_accessor :name
    @@all = []

    def initialize(subject)
        @name = subject
        @@all << self
    end

    def self.all
        @@all
    end

    def classes
        Course.all.select{|classes| classes.tutor == self}
    end

    def students
        classes.map{|course|course.student}.uniq
    end

    def tutored_student?(student)
        students.include?(students.name == student)
    end
end
