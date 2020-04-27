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

  def courses 
    Course.all.select do |course|
      course.student == self
    end
  end 

  def tutors 
    self.courses.map do |course|
      course.tutor
    end 
  end 

  def enrolled_fulltime?
    if self.courses.length >= 3
      return true
    end 
    false
  end 
end
