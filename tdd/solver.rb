class Solver
  def factorial(number)
    raise ArgumentError, 'Negative values not permitted' unless number.instance_of?(Integer) && number >= 0

    return 1 if number.zero?

    return number * factorial(number - 1) if number.positive?
  end

  def reverse(word)
    raise ArgumentError.new, 'Argument should be a string.' unless word.instance_of?(String)

    word.reverse!
  end

  def fizzbuzz(number)
    if number.modulo(15).zero?
      'fizzbuzz'
    elsif number.modulo(5).zero?
      'buzz'
    elsif number.modulo(3).zero?
      'fizz'
    else
      n.to_s
    end
  end
end
