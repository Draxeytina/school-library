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
  end
end
