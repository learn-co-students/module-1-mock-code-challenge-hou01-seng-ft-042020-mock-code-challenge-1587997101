class Student
    # attr_reader
    # attr_writer
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
        Student.all.map do |c|
            self.class == c
        end
    end

    def tutors
        Student.all.map do |tutor|
            self.tutor == tutor
        end
    end

    def enrolled_fulltime?
        Student.all.map do ||
    end

    #enrolled_fulltime, intent to use .map to iterate through 
    # class.all array and create an array of the classes a student is enrolled
    # would then use length to create conditional statement for desired return.
end
