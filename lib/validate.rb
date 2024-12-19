class Validate
  def self.negative_present?(nums)
    negatives = nums.select { |n| n < 0 }
    raise "Negatives not allowed: #{negatives.join(', ')}" if negatives.any?
  end
end
