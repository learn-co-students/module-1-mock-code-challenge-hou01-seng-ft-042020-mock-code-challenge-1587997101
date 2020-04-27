
# - `Tutor#initialize(name)`
# - `Tutor` is initialized with a name (string)
# - name **can be** changed after the Tutor is initialized
# - `Tutor#name`
# - returns the Tutor's name
# - `Tutor.all`
# - returns an array of all the `Tutor` instances that have been initialized
# class Tutor
#     attr_accessor :name
#     @@all = []

#     def initialize(name)
#         @name = name
#         self.class.all << self 
#     end 

#     def self.all
#         @@all
#     end 
# end

# Tutor#courses
# returns an array of Course instances associated with the Tutor instance.

##NOT DONE
# Tutor#students
# returns an array of Student instances tutored by the Tutor instance.
# Tutor#tutored_student?(student)
# a Student instance is the only argument
# returns true if the Tutor has tutored this Student 
# (if there is a Course instance that has this Tutor and Student), 
# returns false otherwise
class Tutor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.class.all << self 
    end 

    def self.all
        @@all
    end 

    def courses
        Course.all.select do |the_course|
            the_course.tutor == self 
        end 
    end 

    def students
        self.courses.map do |this_course|
            this_course.student
        end 
    end 

    def tutored_student?(student_object)
        search = (self.students.find do |this_student|
            this_student == student_object
            end )

            if search
                return true
            else 
                return false
            end 

    end 
end



# t1 = Tutor.new("James", "biology")
