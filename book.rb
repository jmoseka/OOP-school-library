class Book
  attr_accessor :title, :author

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  # book has many rental
  def add_rental(rental)
    @rental << rental
    student.classroom = self

    # a rental belongs to a book
    # saving the current rental object refered to as self
    # to the book objects rental variable
    book.rental = self
  end
end
