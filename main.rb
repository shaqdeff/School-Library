require './app'

#  define the entry point
def main
  #  create a new app instance
  app = App.new
  #  print welcome message
  puts 'Welcome to School Library App!'
  #  print options
  puts 'Please choose an option by entering a number:'
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
  #  get user input
  option = gets.chomp
  #  call the method that corresponds to the option
  case option
  when '1'
    app.list_books
  when '2'
    app.list_people
  when '3'
    app.create_person
  when '4'
    app.create_book
  when '5'
    app.create_rental
  when '6'
    app.list_rentals_for_person_id
  when '7'
    puts 'Thank you for using this app!'
    return
  else
    puts 'That is not a valid option'
  end
  #  repeat the process
  main
end

main
