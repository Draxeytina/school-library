require './classes/student'

describe Student do
  context 'Test initialization of Studenta and instamce variable values ' do
    age = 25
    classroom = 'Room A'
    student = Student.new(classroom, age)

    it 'name should be  unknown' do
      expect(student.name).to eq 'Unknown'
    end
    it 'age should be equal to student age' do
      expect(student.age).to eq 25
    end
    it 'classroom should be equal  to student classroom' do
      expect(student.classroom).to eq 'Room A'
    end

    it 'parent permission should be equal  true' do
      expect(student.parent_permission).to be true
    end
    it 'studnt id should be nil' do
      expect(student.id).to be_kind_of Numeric
    end
  end

  context 'Test student instance type' do
    age = 20
    classroom = 'Room B'
    student = Student.new(classroom, age)

    it 'should be student instance' do
      expect(student).to be_instance_of Student
    end
  end

  context 'Test student hash ' do
    it 'student hash should be correct' do
      classroom = 'Room C'
      age = 19
      name = 'Abebe'
      parent_permission = false
      id = 2000
      expected_hash = {
        id: id,
        age: age,
        name: name,
        parent_permission: parent_permission,
        classroom: classroom,
        class: 'Student'
      }
      stud = Student.new(classroom, age, name, parent_permission: parent_permission, id: id)
      expect(stud.to_hash).to eq expected_hash
    end
  end
end
