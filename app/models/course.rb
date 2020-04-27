class Course

	attr_accessor :name, :student, :tutor
	 @@all =[]

  
	def initialize(course_name, student, tutor)
	 @course_name = course_name
	 @student = student
	 @tutor = tutor
   @@all << self
	end

	def course_name
		@course_name
	end
	
	def self.all
   @@all
	end

	def tutor
    @tutor
	end

	def student
		@student
	end

end
