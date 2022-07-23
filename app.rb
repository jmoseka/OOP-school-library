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
    menu
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
    menu
  end

  def create_book
    print('Title: ')
    title = gets.chomp
    print('Author: ')
    author = gets.chomp
    @books << Book.new(title, author)
    puts('Book created successfully!')
    menu
  end

  def handled_rental(selected_book, selected_person, selected_date)
    @rentals << Rental.new(@books[selected_book], @persons[selected_person], selected_date)

    puts('Rental created')
    puts
    menu
  end

  def create_rental
    if @books.length.positive? && @persons.length.positive?
      puts
      puts('Select a book from the following list by number')

      @books.each_with_index { |book, index| puts("#{index}) Title: #{book.title} Author: #{book.author}") }
      puts
      selected_book = gets.chomp.to_i

      puts('Select a user from the following list by number(not id)')
      @persons.each_with_index do |person, index|
        puts("#{index}) [#{person.class}]  Name: #{person.name}  ID: #{person.id}  Age: #{person.age}")
      end
      selected_person = gets.chomp.to_i

      print('Date: ')
      selected_date = gets.chomp.to_s
      puts
      handled_rental(selected_book, selected_person, selected_date)
    else
      puts 'No books or no persons yet!'
      menu
    end
  end

  def rentals_list
    puts('Rentals: ')
    puts
    print('ID of person: ')
    selected_id = gets.chomp.to_i
    puts('Rentals: ')

    @rentals.each do |rental|
      next unless rental.person.id == selected_id

      puts
      puts("Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}")
      puts
    end
    menu
  end
end
