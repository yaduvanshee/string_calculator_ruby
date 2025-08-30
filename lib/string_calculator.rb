class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
  
    delimiter = /,|\n/
    parts = numbers.split(delimiter)
    parts.map(&:to_i).sum
  end
end
