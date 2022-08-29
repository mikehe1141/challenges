class Challenge
  def divide(dividend, divisor)
    return dividend if divisor == 1

    abs_dividend = dividend.abs
    abs_divisor = divisor.abs
    quotient = 0

    (0...31).to_a.reverse_each do |bit|
      next unless abs_divisor << bit <= abs_dividend

      abs_dividend -= abs_divisor << bit

      quotient += 1 << bit
    end

    if (dividend.positive? && divisor.positive?) || (dividend.negative? && divisor.negative?)
      quotient
    else
      quotient * -1
    end
  end
end
