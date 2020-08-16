defmodule FizzBuzz do
  def fizzbuzz() do
    fn
      (0, 0, _) -> "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, n) -> n
    end
  end
end

"""
FizzBuzz.fizzbuzz().(0, 1, 2) -> "Fizz"
FizzBuzz.fizzbuzz().(1, 0, 2) -> "Buzz"
FizzBuzz.fizzbuzz().(1, 2, 3) -> 3
"""
