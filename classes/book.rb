require_relative 'rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals, :id

  def initialize(title, author, id: nil)
    @id = id.nil? ? Random.rand(1..1000) : id
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    Rental.new(self, person, date)
  end

  def to_hash
    {
      id: @id,
      title: @title,
      author: @author
    }
  end
end
