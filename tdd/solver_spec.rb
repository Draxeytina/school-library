require_relative 'solver'

describe Solver do
  solver = Solver.new
  context 'Test factorial function' do
    negative = -5
    it 'should raise an error' do
      expect { solver.factorial(negative) }.to raise_error(ArgumentError)
    end
    number = 0
    it 'should return 1' do
      expect(solver.factorial(number)).to eql 1
    end
    positiveNumber = 5
    it 'should return 120' do
      expect(solver.factorial(positiveNumber)).to eql 120
    end
  end
end

describe Solver do
  solver = Solver.new
  context 'Test reverse method' do
    word = 'hello'
    it 'should return olleh' do
      expect(solver.reverse(word)).to eql 'olleh'
    end
  end
end

describe Solver do
  solver = Solver.new
  context 'Test fizzbuzz method' do
    N = 3
    it 'should return fizz' do
      expect(solver.fizzbuzz(N)).to eql 'fizz'
    end
  end
end