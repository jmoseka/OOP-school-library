def main
  puts 'Welcome to School Librabry App!'
  puts ''
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'

  input = gets
  input = input.to_i

  if input == 3
    choose = ''
    puts "Do you want to create a student (1) or a teacher (2) [Input the number]: #{choose = gets.chmod}"
    choose = input.to_i

    if choose == 1
        puts "one is selected"
    else
        puts "two is selected"
    end
  end
end

main
