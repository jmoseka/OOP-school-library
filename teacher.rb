require './person'

class Teacher < Person
  def can_use_services?
    true
  end
end
