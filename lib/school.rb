require "pry"

class School
  attr_accessor :roster
  
  def initialize(name)
    @name = name
    @roster = {}
  end  
  
  #binding.pry
  
  def add_student(name, grade)
    @roster[grade] ||= []     #What does this mean???
    @roster[grade] << name 
  end  
  
  def grade(grade)
    @roster[grade]
    #roster[grade].map {|name| name }
   # binding.pry
  end
  
  def sort # this one was a bit confusing I wanted to use map
    #sort_students = {} sort returns a new array even if each is called
    @roster.each {|grade, name| @roster[grade] = name.sort}
    #sort_students
  end  
end  