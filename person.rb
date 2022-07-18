class Person
    def initialize
        @id = "#{("a".."z").to_a.sample} #{rand(1...100)}"
        @name = "User #{rand(1..100)}"
        @age = "#{rand(18..100)}"
end