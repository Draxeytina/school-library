require './classes/rental'
require './classes/student'
require './classes/book'
require './classes/person'

describe Rental do
  context 'Test rental initialization  with data' do
    it 'should  be right data' do
      student = Student.new("Section N", 14, 'Joni', id: 7000)
      book = Book.new('Ruby for Dummy', 'Griel')
      date = '2022-05-08'

      rental = Rental.new(book, student, date)

      expect(rental.date).to eq date
      expect(rental.person).to be_kind_of(Person)
      expect(rental.book).to be_kind_of(Book)
    end
  end

  context 'test to_hash method' do
    it 'should correct hash of the instance' do
      student = Student.new('Section N', 16, 'Worash',parent_permission:false, id: 8000)
      book = Book.new('Introduction to java', 'Bose doya', id:  900)
      date = '2022-07-05'

      rental = Rental.new(book, student, date)
      expected_hash = {
        person_id: student.id,
        book_id: book.id,
        date: date
      }

      expect(rental.to_hash).to eq expected_hash
    end
  end

  context 'rental gets added to the relevant person and book' do
    student = Student.new('Section N', 16, 'Worash',parent_permission:false, id: 8000)
    book = Book.new('Introduction to java', 'Bose doya', id:  900)
    date = '2022-07-05'

    rental = Rental.new(book, student, date)

    it 'should rental to the person' do
      expect(student.rentals).to eq [rental]
    end

    it 'should  rental to the book' do
      expect(book.rentals).to eq [rental]
    end
  end
end