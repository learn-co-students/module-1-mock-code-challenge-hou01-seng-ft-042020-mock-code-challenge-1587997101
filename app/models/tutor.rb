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

  def students
    student.all.select do |student|
      student.name == self
  end

end
