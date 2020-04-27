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
        Course.all.select{|c| c.student == self}
    end

    def tutors
        classes.map{|c| c.tutor}
    end

    def enrolled_fulltime?
        self.classes.size >= 3? true : false
    end

    

end
