require 'pry'
class School
  attr_accessor :roster, :student

  def initialize(student)
    @student = student
    @roster = {}
  end

  def add_student(student_name, grade)
    @roster[grade] ||= []
    # if @roster[grade] (has a value) != nil
    # ultilize @roster[grade]
    # else
    # @roster[grade] = []
    # end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.sort_by {|grade, students| grade}.each do |grade, students|
      students.sort!
    end.to_h
  end
end
