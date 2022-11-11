require './nameable'
require './rental'

class Person < Nameable
    attr_reader :id, :rentals
    attr_accessor :age, :name, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  # Getters for @id
  attr_reader :id

  # Getter and Setter for @name and @age
  attr_accessor :name, :age

  # Private method
  private

  def of_age?
    @age >= 18
  end

  # Public method
  def can_use_services?
    return unless of_age? || @parent_permission

    true
  end

  def correct_name
    @name
  end
  
  def add_rental(date, person)
      Rental.new(date, person, self)
    end
end

