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
        Course.all.select{|x| x.student == self}
    end

    def tutors
        a = Course.all.select{|x| x.student == self}
        a.map {|x| x.tutor}.uniq
    end
    
end
