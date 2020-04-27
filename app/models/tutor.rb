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

  def classes
    Course.all.select{|x| x.tutor == self}
  end

  def students
    a = Course.all.select{|x| x.tutor == self}
    a.map{|x| x.student}.uniq
  end

  def tutored_student?(student)
    a = Course.all.select{|x| x.tutor == self}
    a.any? {|x| x.student}
  end

  
end
