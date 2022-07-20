require './nameable'
# The base Decorator class follows the same interface as the other components.
# The primary purpose of this class is to define the wrapping interface for all
# concrete decorators. The default implementation of the wrapping code might
# include a field for storing a wrapped component and the means to initialize
# it.
class Decorator < Nameable
  attr_accessor :nameable

  initialize(nameable)
  @nameable = nameable
end

# The Decorator delegates all work to the wrapped component.
def correct_name
  @nameable
end
