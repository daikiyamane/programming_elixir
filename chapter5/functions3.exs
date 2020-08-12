defmodule FizzBuzz2 do
  def fizzbuzz() do
    fn
      (0, 0, _) -> "FizzBuzz"
      (0, _, _) -> "Fizz"
      (_, 0, _) -> "Buzz"
      (_, _, n) -> n
    end
  end
  def fizzbuzz2() do
    fb2 = fn n -> fizzbuzz().(rem(n ,3), rem(n, 5), n) end
    Enum.each(10..17, fn x -> IO.puts(fb2.(x)) end)
  end
end

"""
FizzBuzz2.fizzbuzz2() ->
  "Buzz"
  11
  "Fizz"
  13
  14
  "FizzBuzz"
  16
  17
"""
