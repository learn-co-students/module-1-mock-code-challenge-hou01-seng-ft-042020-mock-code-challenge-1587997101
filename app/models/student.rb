class Student

    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
        @@all << self

    end

    def self.all
        @@all
    end

    def courses
        Course.all.select do |cl|
            cl.student == self
        end
    end

    def tutors  
        courses.map{|cl| cl.tutor}.uniq
    end

    def enrolled_fulltime?
        if courses.length > 2
            return true
        else
            return false
        end
    end




end
