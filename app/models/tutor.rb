class Tutor
  
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
            cl.tutor == self
        end
    end

    def students
        # x = classes.map do |cl|
        #     cl.student
        # end
        # return x.uniq
        courses.map{|cl| cl.student}.uniq
    end

    def tutored_student?(student)
        if student.tutors.include?(self)
            return true
        else
            return false
        end
    end



end
