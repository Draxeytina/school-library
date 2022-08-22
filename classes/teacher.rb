require_relative 'person'

class Teacher < Person
  def initialize(age, classroom, specialization, name = 'Unknown', parent_permission: true)
    super
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
