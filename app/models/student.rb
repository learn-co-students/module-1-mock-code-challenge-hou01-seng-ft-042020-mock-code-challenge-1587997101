class Student

	 attr_accessor :name
	 @@all =[]

	def initialize(name)
   @name = name
   @@all << self
	end

	def name
		@name		
	end
	
	def self.all
   @@all
	end

	def classes

    Course.all. { |c| c.name == self}
	end

	def tutors
     
	end
	

	def enrolled_fulltime?

    
	end

end
