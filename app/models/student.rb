class Student
attr_accessor :name 

    @@all = []

    def initialize(name:)
        @name=name 
        @@all<<self 
    end 

    def self.all
        @@all 
    end 

    def classes
        Course.all.select do |inst| inst.student == self 
        end 
    end

    def tutors
        classes.map do |inst| inst.tutor 
        end 
    end 

    def enrolled_fulltime?
        self.classes.count >= 3
    end 
end
