# code here!

class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end
  
  def name
    @name
  end
  
  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(num)
    @roster[num]
  end
  
  def sort
    new_roster = {}
      @roster.collect do |grade, name|
          new_roster[grade] = name.sort
          
        
    end
    new_roster
  end
  
  
  
  
end