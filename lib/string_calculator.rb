class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.match?(/^\d+$/)


    parts = numbers.split(",")
    parts.map(&:to_i).sum
  end
end
