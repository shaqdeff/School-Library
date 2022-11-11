require './app'

def main
  puts 'Welcome to School Library App!'
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'

  option = gets.chomp

  case option
  when '1'
    list_books
  when '2'
    list_people
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    create_rental
  when '6'
    list_rentals_for_person_id
  when '7'
    puts 'Thank you for using this app!'
    exit 0
  else
    puts 'That is not a valid option'
  end
  
  main
end

  main
