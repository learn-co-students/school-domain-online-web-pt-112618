# code here!
class School
  def initialize(name)
    @name=name
    @roster = {}
  end
 
  def add_student(name, grade)
     if @roster.has_key? grade
    
  
   @roster[grade]<<name
 else
   @roster[grade] = []
     @roster[grade]<<name
 end
  end
 
 def roster
 @roster
 end
 
 def grade(grade)

  if @roster.has_key? grade
  @roster[grade]
end


end

def sort

@roster.each do |key, value|
  @roster[key] = value.sort_by{ |a,b| a}
end


end
end