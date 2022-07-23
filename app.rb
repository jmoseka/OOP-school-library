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
          puts 'First choose'
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

      def select_option
        puts
        puts 'Please choose an option by entering a number: '
        options = [
          '1 - List all books',
          '2 - List all people',
          '3 - Create a person',
          '4 - Create a book',
          '5 - Create a rental',
          '6 - List all rentals for a given person id',
          '7 - Exit'
        ]
        puts options
        gets.chomp.to_i
      end

      def person_list
        @persons.each do |individual|
          puts "[#{individual.class}]id: #{individual.id}, Name: #{individual.name}, Age: #{individual.age}"
        end
        run
      end

      def create_teacher
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Specialization: '
        specialization = gets.chomp
        @persons << Teacher.new(age, name, specialization)
        puts 'create teacher'
      end

      def create_student
        print 'Age: '
        age = gets.chomp
        print 'Name: '
        name = gets.chomp
        print 'Has parent permission? [Y/N]: '
        parent_permission = gets.chomp != 'n'
        st = Student.new(age, name, parent_permission)
        @persons << st
        puts 'create student'
      end

      def create_person
        print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        person_type = 0
    
        person_type = gets.chomp while person_type != '2' && person_type != '1'
    
        case person_type
        when '1'
          create_student
    
        when '2'
          create_teacher
        end
        puts 'Person created successfully'
        puts
        run
      end
    

end

