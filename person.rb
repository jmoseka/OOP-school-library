require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age, :parent_permission, :specialization
  attr_reader :id

  def initialize(age, specialization, name = 'Unknown', parent_permission: true)
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
