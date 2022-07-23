def select_options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  puts ''
end

def main
  puts 'Welcome to School Librabry App!'
  puts ''

  input = nil

  while input != 7
    select_options
    input = gets.chomp.to_i

    # code to be executed
  end

end

main