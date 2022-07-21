# Create the many-to-many (also has-many-through)
# relationship between Person and Book
# using the intermediate class Rental

class Rental
  attr_accessor :date
  attr_reader :book, :person

  def initialize(date, book, person)
    @date = date
    @book = book
    # a rental belongs to a book
    book.rental << self

    @person = person
    # a rental belongs to a person
    person.rental << self
  end
end
