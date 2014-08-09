require 'pry'

class Factorial

  def initialize(number)
    @number = number
    raise ArgumentError, 'Negative number is not allowed' if @number < 0
  end

  def calculate
    result = 1
    while @number > 1 do
      result = result * @number
      @number = @number -1
    end
    result
  end
end
