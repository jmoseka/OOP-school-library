require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  PERMISSION = true
  def initialize(age, name = 'Unknown', parent_permission = PERMISSION)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    age >= 18
  end

  public

  def correct_name
    @name
  end
end

# a person has many rentals)
def add_rental(book, date)
  Rental.new(date, book, self)
end
