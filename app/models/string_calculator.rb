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

    numbers.split(/,|\n/).map(&:to_i).sum
  end
end
