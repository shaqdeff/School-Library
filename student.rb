require './person'

# create student class
class Student < Person
  def initialize(name = 'Unknown', age, parent_permission: true, classroom)
    super(name: name, age, parent_permission: parent_permission)
    @classroom = classroom
  end
end

# create playh_hooky method
def play_hooky
  "¯\(ツ)/¯"
end