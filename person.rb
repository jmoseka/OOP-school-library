require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
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

person = Person.new(22, 'maximilianus')
p person.correct_name
capitalized_person = capitalize_decorator.new(person)
p capitalized_person.correct_name
capitalized_trimmed_person = trimmer_decorator.new(capitalized_person)
p capitalized_trimmed_person.correct_name
