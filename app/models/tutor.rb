class Tutor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def courses   # return course instances
    Course.all.select {|course| course.tutor == self}
  end

  def students  # return student instances
    courses.map {|course| course.student}.uniq
  end

  def tutored_student?(student)
    #returns true is the tutor has tutored this student.
    # (if there is a course instance that has this tutor and student)
    #returns false otherwise
    students.include?(student)
  end

  def courses_by_name   #returns names of courses
    courses.map {|course| course.course_name}
  end

  def students_by_name  # returns names of students
    students.map {|student| student.name}
  end

end
