class Solver
  def factorial(number)
    if number < 0 then 
      raise ArgumentError.new 'Negative values not permitted'
      # raise "Unhandled exception. Negative value not permitted"
    elsif number == 0 then
      return 1
    end
  end

  def reverse
  end

  def fizzbuzz
  end
end

# solverX = Solver.new
# solverX.factorial(-5)