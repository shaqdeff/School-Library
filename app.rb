require_relative 'book'
require_relative 'rental'
require_relative 'student'
require_relative 'teacher'
require_relative 'person'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each do |book|
      puts "Title: \"#{book.title}\", Author: #{book.author}"
    end

    puts 'No books added' if @books.empty?
  end

  def list_people
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    puts 'No people found' if @people.empty?
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_type = gets.chomp

    case person_type
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'Invalid option'
      nil
    end
  end

  def create_student
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Has parent permission? [Y/N]: '
    parent_permission = gets.chomp.downcase == 'y'

    student = Student.new(age, name, parent_permission: parent_permission)
    @people << student
    puts 'Person created successfully'
    student
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp

    print 'Name: '
    name = gets.chomp

    print 'Specialization: '
    specialization = gets.chomp

    teacher = Teacher.new(age, name, specialization)
    @people << teacher
    puts 'Person created successfully'
    teacher
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book
    puts 'Book created successfully'
    book
  end

  def create_rental
    puts 'Select a book from the following list by number'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end

    book_index = gets.chomp.to_i

    puts 'Select a person from the following list by number (not id)'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end

    person_index = gets.chomp.to_i

    print 'Date: '
    date = gets.chomp

    rental = Rental.new(date, @books[book_index], @people[person_index])
    @rentals << rental
    puts 'Rental created successfully'
    rental
  end

  def list_rentals_for_person_id
    print 'ID of person: '
    id = gets.chomp.to_i

    rentals = @rentals.select { |rental| rental.person.id == id }
    puts 'Rentals:'
    rentals.each do |rental|
      puts "Date: #{rental.date}, Book \"#{rental.book.title}\" by #{rental.book.author}"
    end
  end
end
