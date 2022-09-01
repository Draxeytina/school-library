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
  end
end