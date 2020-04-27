class Tutor

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
        Course.all.select{|c| c.tutor == self}
    end

    def students
        classes.map{|c| c.student}
    end

    def tutored_student?(student)
        students.find{|s| s == student}? true : false
    end

    
  
end
