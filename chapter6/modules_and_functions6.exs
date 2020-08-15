defmodule Chop do
  def guess(n, a..b) when n == div(a+b, 2) do
    IO.puts("Is it #{n}")
    n
  end
  def guess(n, a..b) when n > div(a+b, 2) do
    guess_number = div(a+b, 2)
    IO.puts("Is it #{guess_number}")
    guess(n, guess_number..b)
  end
  def guess(n, a..b) when n < div(a+b, 2) do
    guess_number = div(a+b, 2)
    IO.puts("Is it #{guess_number}")
    guess(n, a..guess_number)
  end
end
