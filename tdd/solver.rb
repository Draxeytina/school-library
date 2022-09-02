class Solver
  def factorial(number)

    unless number.instance_of?(Integer) && number >= 0
      raise ArgumentError.new 'Negative values not permitted'
    end
 
    return 1 if number == 0 
   
    return number * factorial(number-1) if number > 0
  
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
