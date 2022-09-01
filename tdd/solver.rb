class Solver
  def factorial(number)
    if number < 0 then 
      raise ArgumentError.new 'Negative values not permitted'
    elsif number == 0 || number == 1 then
      return 1
    else
      return number * factorial(number-1) if number > 0
    end
  end

  def reverse(word)
    return word.reverse!
  end

  def fizzbuzz(n)
    if n.modulo(15) == 0
      return 'fizzbuzz'
    elsif n.modulo(5) == 0
      return 'buzz'
    elsif n.modulo(3) == 0
      return 'fizz'
    else
      return "#{n}"
    end
  end
end
