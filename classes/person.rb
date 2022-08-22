class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = 0
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  private_class_method def of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
