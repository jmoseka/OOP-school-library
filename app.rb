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

    def menu # rubocop:todo Metrics/CyclomaticComplexity
        choose = select_option
        choose = select_option while choose < 1 || choose > 7
        case choose
        when 1
          books_list
          puts 'first choose'
        when 2
          person_list
        when 3
          create_person
        when 4
          create_book
        when 5
          create_rental
        when 6
          rentals_list
        when 7
          puts 'Exit'
          exit
        end
      end


end

