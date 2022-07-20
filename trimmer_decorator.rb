require './decorator'

class TrimmerDecorator < Decorator
  def correct_name
    name = name[0...10]
  end
end
