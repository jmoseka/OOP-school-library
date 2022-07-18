class Person
  def initialize(name = "Unknown", age, parent_permission = true)
    @name = name
    @age = age
    @id = "#{('a'..'z').to_a.sample} #{rand(1...100)}"
  end

  # getter and setter method
  attr_reader :id
  attr_accessor :name, :age
end
