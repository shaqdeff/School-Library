require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :age, :name, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission = true, id = rand(1..1000))
    super()
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, person)
    Rental.new(date, person, self)
  end

  private

  def of_age?
    @age >= 18
  end
end