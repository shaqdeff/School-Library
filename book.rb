require './rental'

class Book
  attr_reader :isbn
  attr_accessor :title, :author, :rentals

  def initialize(title, author, isbn = rand(1..1000))
    @isbn = isbn
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end
end
