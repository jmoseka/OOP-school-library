class Classroom
  attr_accessor :label, :student

  def initialize(label)
    @label = label
    @student = []
  end

  def many(student)
    # saving each student object in an array
    @students << student
    # saving the current classroom object refered to as self
    # to the student objects classroom variable
    student.classroom = self
  end
end