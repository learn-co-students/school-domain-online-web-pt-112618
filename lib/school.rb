class School
  attr_reader :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def add_student(student, year)
    if @roster.include?(year)
    else
      @roster[year] = []
    end
    @roster[year] << student
  end
  
  def grade(year)
    @roster[year]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end
end