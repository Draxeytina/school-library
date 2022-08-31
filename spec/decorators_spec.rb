require_relative '../classes/decorators/base_decorator'
require_relative '../classes/decorators/capitalize_decorator'
require_relative '../classes/decorators/trimmer_decorator'
require_relative '../classes/person'

describe BaseDecorator do
  describe 'Check correct_name method' do
    it 'returns "Michael" from person class' do
      person = Person.new(12, 'Michael', parent_permission: false)
      base_decorator = BaseDecorator.new(person)
      expect(base_decorator.correct_name).to eql('Michael')
    end
  end
end

describe CapitalizeDecorator do
  describe 'Check capitalizing method' do
    person = Person.new(12, 'michael', parent_permission: false)
    capitalize_decorator = CapitalizeDecorator.new(person)
    it 'returns Michael after capitalize method' do
      expect(capitalize_decorator.correct_name).to eql('Michael')
    end
  end
end

describe TrimmerDecorator do
  describe 'Check trimming method from "Tinashe Murambinda"' do
    it 'returns "Tinashe Mu"' do
      person = Person.new(27, 'Tinashe Murambinda', parent_permission: false)
      trimmer_decorator = TrimmerDecorator.new(person)
      expect(trimmer_decorator.correct_name).to eql('Tinashe Mu')
    end
  end
end

describe 'Decorators for person "tinashemurambinda"' do
  person = Person.new(27, 'tinashemurambinda', parent_permission: false)
  capitalized_name = CapitalizeDecorator.new(person)
  it 'returns Tinashemur' do
    expect(capitalized_name.correct_name).to eql('Tinashemurambinda')
  end
  trimmed_name = TrimmerDecorator.new(capitalized_name)
  it 'returns "Tinashemur"' do
    expect(trimmed_name.correct_name).to eql('Tinashemur')
  end
end
