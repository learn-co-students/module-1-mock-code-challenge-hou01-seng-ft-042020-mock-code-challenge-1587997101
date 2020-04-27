class Course
  attr_accessor :tutor, :student, :course_name
  @@all = []

  def initialize(tutor, student, course_name)
    @tutor = tutor
    @student = student
    @course_name = course_name
    @@all << self
  end

  def self.all 
    @@all
  end

  def tutor
    Tutor.all.find do |t|
      @tutor == t
    end
  end

  def student 
    Student.all.find do |s|
      @student == s
    end
  end
end

