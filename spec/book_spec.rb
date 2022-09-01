require_relative '../classes/book'
require_relative '../classes/person'

describe Book do
  describe 'creates book given author and title' do
    it 'has given author and title' do
      book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
      expect(book.title).to eql('Rich Dad Poor Dad')
      expect(book.author).to eql('Robert Kiyosaki')
    end
    it 'creates rental' do
      book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
      person = Person.new(12, 'michael', parent_permission: false)
      rental = book.add_rental(person, '2022-08-31')
      expect(rental.person.id).to eql(person.id)
      expect(rental.book.id).to eql(book.id)
    end
  end
end
