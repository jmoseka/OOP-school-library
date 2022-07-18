class Person
  def initialize
    @id = "#{('a'..'z').to_a.sample} #{rand(1...100)}"
    @name = "User #{rand(1..100)}"
    @age = rand(18..100).to_s
  end

  # getter and setter method
  attr_reader :id
  attr_accessor :name, :age
end
