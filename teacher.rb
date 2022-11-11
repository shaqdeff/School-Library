require './person'

# create teacher class
class Teacher < Person
  def initialize(name = 'Unknown', age, specialization, parent_permission: true)
    super(name: name, age, parent_permission: parent_permission)
    @specialization = specialization
  end
end

# create can_use_services? method
def can_use_services?
  true
end