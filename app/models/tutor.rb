class Tutor
    attr_accessor :name 

    @@all = []

    def initialize(name:)
        @name=name 
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def classes
        Course.all.select do |inst| inst.tutor == self 
        end 
    end 

    def students
        classes.map do |inst| inst.student 
        end 
    end 

    def tutored_student?(student)
        self.students.include?(student) 
    end 
  
end
