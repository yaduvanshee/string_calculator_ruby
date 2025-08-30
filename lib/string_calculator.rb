class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
  
    delimiter = /,|\n/
    parts = numbers.split(delimiter)
    parts.map!(&:to_i)

    negatives = parts.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    parts.sum
  end
end
