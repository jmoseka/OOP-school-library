require_relative './book'
require_relative './teacher'
require_relative './student'
require_relative './rental'

class App
    def initialize
      @persons = []
      @books = []
      @rentals = []
    end
end

def list_all_books; end

def list_all_people; end

def add_a_person; end

def add_a_book; end

def add_a_rental; end

def list_all_rentals; end
