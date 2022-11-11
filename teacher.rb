require './person'

# extends person class
class Teacher < Person
  # extends person constructor and @specialization
  def initialize(specialization, age, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
  end

  # overrides can_use_services? = always true
  def can_use_services?
    true
  end
end
