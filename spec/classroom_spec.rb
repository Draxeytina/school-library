require './classes/classroom'

describe Classroom do
  context 'Test classroom with label' do
    label = 'Section Z'
    classroom = Classroom.new(label)
    it 'should be classroom label' do
      expect(classroom.label).to eq label
    end
    it 'should be classroom type' do
      expect(classroom).to be_instance_of Classroom
    end
  end
end
