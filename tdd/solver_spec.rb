require_relative 'solver'

describe Solver do
  solver = Solver.new
  context 'Test factorial function' do
    let negative = -5
    it 'should raise an error' do
      expect(solver.factorial(negative)).should raise_error
    end
  end
end