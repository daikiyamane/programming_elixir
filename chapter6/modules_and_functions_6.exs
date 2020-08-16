defmodule Chop do
  def guess(actual, range = low..high) do
    middle = div(low + high, 2)
    IO.puts("Is it #{middle}")
    _guess(actual, range, middle)
  end
  defp _guess(actual, _low..high, middle) when actual > middle do
    guess(actual, (middle + 1)..high)
  end
  defp _guess(actual, low.._high, middle) when actual < middle do
    guess(actual, low..(middle - 1))
  end
  defp _guess(actual, _range, actual), do: actual
end
