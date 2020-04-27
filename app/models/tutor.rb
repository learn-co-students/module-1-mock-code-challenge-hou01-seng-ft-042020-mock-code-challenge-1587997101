class Tutor
    # attr_reader
    # attr_writer
    attr_accessor :name

    @@all = []
    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end
  
    def classes
        Tutor.all.map do |c|
            self.class == c
        end
    end

    def student
        Tutor.all.map do |student|
            self.student == student
        end
    end

    def tutored_student?(student)
        Tutor.self.map do |student|
            if self.student == student
                true
            else
                false
            end
        end
    end
end