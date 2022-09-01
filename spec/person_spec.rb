require_relative '../classes/book'
require_relative '../classes/person'

describe Person do
  describe 'creates person' do
    it 'has given name, age and permission can use services' do
      person = Person.new(24, 'Robert Kiyosaki', parent_permission: true)
      expect(person.age).to eql(24)
      expect(person.name).to eql('Robert Kiyosaki')
      expect(person.correct_name).to eql(person.name)
      expect(person.parent_permission).to eql(true)
      expect(person.can_use_services?).to eql(true)
    end

    it 'has given name, age and permission cannot use services' do
      person = Person.new(17, 'Michael Faraday', parent_permission: false)
      expect(person.age).to eql(17)
      expect(person.name).to eql('Michael Faraday')
      expect(person.correct_name).to eql(person.name)
      expect(person.parent_permission).to eql(false)
      expect(person.can_use_services?).to eql(false)
    end

    it 'creates rental' do
      book = Book.new('Rich Dad Poor Dad', 'Robert Kiyosaki')
      person = Person.new(12, 'michael', parent_permission: false)
      rental = book.add_rental(person, '2022-08-31')
      expect(rental.person.id).to eql(person.id)
      expect(rental.book.id).to eql(book.id)
    end

    it 'hashes correctly' do
      person = Person.new(17, 'Michael Faraday', parent_permission: false)
      hash = {
        id: person.id,
        age: person.age,
        name: person.name,
        parent_permission: person.parent_permission,
        class: 'Person'
      }
      expect(person.to_hash).to eql(hash)
    end
  end
end