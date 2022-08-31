require_relative 'person'

class Teacher < Person
  def initialize(specialization, age, name = 'Unknown', id: nil)
    super(age, name, parent_permission: true, id: id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def to_hash
    {
      id: @id,
      age: @age,
      name: @name,
      parent_permission: @parent_permission,
      specialization: @specialization,
      class: 'Teacher'

    }
  end
end
