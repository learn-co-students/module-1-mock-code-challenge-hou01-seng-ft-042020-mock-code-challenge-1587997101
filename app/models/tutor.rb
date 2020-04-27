class Tutor
	attr_accessor :name
	 @@all =[]

	def initialize(name)
   @name= name
   @@all << self
	end

	def name
		@name
	end
	
	def self.all
   @@all
	end

 
 def classes
	   

 end

 def students
   
 end

 def tutored_student?(student)

 end



end