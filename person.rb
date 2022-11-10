# create person class
class Person
  def initialize(name = 'Unknown', age, parent_permission: true)
    @id = rand(1..1000)
    @name = name
    @age = age
  end
end

# getters for id
attr_reader :id

# setters and getters for name and age.
attr_accessor :name, :age

# private method for is_of_age 
private
def is_of_age?
  @age >= 18
end

# public method for can_use_services
public
def can_use_services?
  is_of_age? || @parent_permission
end