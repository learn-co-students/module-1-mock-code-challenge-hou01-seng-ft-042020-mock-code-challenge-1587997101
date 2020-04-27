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

    def classes
        Course.all.select{|classes| classes.student == self}
    end

    def tutors
        classes.map{|tutors| tutors.tutor}.uniq
    end

    def enrolled_fulltime?
        self.classes.size > 2 ? true : false
    end
end
