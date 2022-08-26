class Rental
  attr_accessor :date, :book, :person

  def initialize(book, person, date)
    @date = date
    @book = book
    @person = person
    book.rentals.push(self)
    person.rentals.push(self)
  end

  def list_rentals
    "#{@date} - #{@book.title} by #{@book.author}"
  end
end
