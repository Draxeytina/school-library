require_relative 'nameable'
require_relative 'rental'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true, id: nil)
    super()
    @id = id.nil? ? Random.rand(1..1000) : id
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, self, date)
  end

  def to_hash
    {
      id: @id,
      age: @age,
      name: @name,
      parent_permission: @parent_permission,
      class: 'Person'

    }
  end

  private

  def of_age?
    @age >= 18
  end
end
