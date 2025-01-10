# frozen_string_literal: true

################################################################################
#                             STRING CALCULATOR                                #
#                                                                              #
# This class is written by Devesh Kumar Singh                                  #
#                                                                              #
# Provides string calculator functionality:                                    #
# - Can add numbers provided as a comma-separated string                       #
# - Returns 0 for empty strings                                                #
#                                                                              #
################################################################################

class StringCalculator
  # Adds numbers from a comma-separated string.
  # @param [String] A comma-separated string of numbers.
  # @return [Integer] The sum of the numbers in the string.
  def add(numbers)
    return 0 if numbers.empty?

    # numbers.split(/,|\n/).map(&:to_i).sum
    delimiter = /,|\n/
    if numbers.start_with?("//")
      custom_delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.new(Regexp.escape(custom_delimiter[2..]))
    end
    # numbers.split(delimiter).map(&:to_i).sum
    numbers_list = numbers.split(delimiter).map(&:to_i)
    validate_negatives_nos(numbers_list)
    numbers_list.sum
  end

  private

  def validate_negatives_nos(numbers_list)
    negatives = numbers_list.select { |num| num < 0 }
    return if negatives.empty?
    raise "negative numbers not allowed: #{negatives.join(', ')}"
  end
end
