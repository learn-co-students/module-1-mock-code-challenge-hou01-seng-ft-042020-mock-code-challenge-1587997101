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

  def tutors
    Tutors.all.select do |tutor|
      tutor.name == self
    end
  end

  def enrolled_fulltime
    
  end
end
