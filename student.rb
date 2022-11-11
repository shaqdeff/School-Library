require './person'

# extends person class
class Student < Person
   attr_accessor :classroom, :type
  # extends parent's constructor by adding @classroom and a parameter for it
  def initialize(classroom, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    @type = 'Student'
  end

  # create playh_hooky method
  def play_hooky
    '¯(ツ)/¯'
  end
end

def add_to_classroom(classroom)
    @classroom = classroom
    classroom.student << self unless classroom.student.include?(self)
  end
end