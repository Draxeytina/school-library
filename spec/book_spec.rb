require_relative '../classes/book'
require_relative '../classes/person.rb'


describe Book do
  describe 'creates book given author and title' do
    it 'having given author and title' do
      book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
      expect(book.title).to eql('Rich Dad Poor Dad')
      expect(book.author).to eql('Robert Kiyosaki')
    end
  end
end
