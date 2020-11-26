# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_accessor :name
  attr_reader :roster


  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted = {}
    roster.each do |grade,students|
      sorted[grade] = students.sort
    end
    sorted
  end
end

school = School.new("Bayside")

puts school.name

school.add_student("Keaton", 11)

school.add_student("Zoe", 11)

school.add_student("Francis", 12)

school.add_student("Lauren", 11)



puts school.roster
puts school.grade(12)

puts school.sort
