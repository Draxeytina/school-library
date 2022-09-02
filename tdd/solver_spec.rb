require_relative 'solver'

describe Solver do
  solver = Solver.new
  context 'Test factorial function' do
    it 'should raise an error' do
      expect { solver.factorial(-5) }.to raise_error(ArgumentError)
    end

    it 'should return 1' do
      expect(solver.factorial(0)).to eql 1
    end

    it 'should return 120' do
      expect(solver.factorial(5)).to eql 120
      expect(solver.factorial(4)).to eq 24
      expect(solver.factorial(10)).to eq 3_628_800
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
    it 'should raise error when argument is not string' do
      expect { solver.reverse(true) }.to raise_error(ArgumentError)
    end
  end
end

describe Solver do
  solver = Solver.new
  context 'Test fizzbuzz method' do
    it 'should return fizz' do
      expect(solver.fizzbuzz(3)).to eql 'fizz'
    end
  end

  context 'Test fizzbuzz method' do
    it 'should return buzz' do
      expect(solver.fizzbuzz(5)).to eql 'buzz'
    end
  end

  context 'Test fizzbuzz method' do
    it 'should return fizzbuzz' do
      expect(solver.fizzbuzz(15)).to eql 'fizzbuzz'
    end
  end

  context 'Test fizzbuzz method' do
    it 'should return "7"' do
      expect(solver.fizzbuzz(7)).to eql '7'
    end
  end
end
