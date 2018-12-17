class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_students = {}
    roster.map {|grade, student| sorted_students[grade] = student.sort}
    sorted_students
  end
end
