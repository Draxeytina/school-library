require './classes/teacher'

describe Teacher do
  context 'Test teacher initialized  with data ' do
    specialization = 'Ruby'
    age = 35
    name = 'Gabriel'
    id = 5000

    teacher = Teacher.new(specialization, age, name, id: id)

    it 'teacher name should be teacher name ' do
      expect(teacher.name).to eq name
    end
    it 'teacher age should be teacher age ' do
      expect(teacher.age).to eq age
    end
    it 'teacher id should be teacher name ' do
      expect(teacher.id).to eq id
    end
    it 'perssion should be  truthy ' do
      expect(teacher.parent_permission).to be true
    end
  end
  context 'Test teacher instance type' do
    specialization = 'Java'
    age = 40
    teacher = Teacher.new(specialization, age)

    it 'should be teacher instance' do
      expect(teacher).to be_instance_of Teacher
    end
  end
  context 'Test teacher hash ' do
    it 'teacher hash should be correct' do
      specialization = 'Ruby'
      age = 50
      name = 'Amanu'
      id = 6500

      expected_hash = {
        id: id,
        age: age,
        name: name,
        parent_permission: true,
        specialization: specialization,
        class: 'Teacher'
      }
      teacher = Teacher.new(specialization, age, name, id: id)
      expect(teacher.to_hash).to eq expected_hash
    end
  end
end
