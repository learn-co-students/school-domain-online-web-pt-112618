# code here!
require 'pry'
class School
  
  def initialize(name)
    @name = name 
    @roster = {}
  end
  
  def roster 
    @roster 
  end
  
  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else 
      @roster[grade] = []
      @roster[grade] << student
    end
  end 
  
  
  def grade(grade)
    @roster[grade] if @roster.keys.include?(grade)
  end
  
  def sort 
    @roster.map do |grade, students|
      @roster[grade] = students.sort 
    end  
    @roster
  end 
  
end