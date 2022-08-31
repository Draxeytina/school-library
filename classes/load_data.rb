require_relative 'student'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'
module LoadData
  def create_persons(persons)
    persons.map { |person| create_object_person(person) }
  end

  def create_object_person(hash)
    case hash['class']
    when 'Student'
      Student.new(
        hash['classroom'],
        hash['age'],
        hash['name'],
        parent_permission: hash['parent_permission'],
        id: hash['id']
      )
    when 'Teacher'
      Teacher.new(
        hash['specialization'],
        hash['age'],
        hash['name'],
        id: hash['id']
      )
    end
  end

  def create_books(books)
    books.map { |book| create_object_book(book) }
  end

  def create_object_book(book)
    Book.new(
      book['title'],
      book['author']
    )
  end

  def create_rentals(rentals, persons, books)
    rentals.map { |rental| create_object_rental(rental, persons, books) }
  end

  def create_object_rental(rental, persons, books)
    person = persons.find { |p| p.id == rental['person_id'] }
    book = books.find { |b| b.id == rental['book_id'] }
    Rental.new(
      book, person, rental['date']
    )
  end
end
