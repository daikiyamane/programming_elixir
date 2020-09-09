defmodule StringsAndBinaries do
  #StringsAndBinaries-1
  def space_to_tilda(list) do
    Enum.all?(list, &(&1 >= 32 and &1 <=126))
  end

  #StringsAndBinaries-2
  def anagram?(word1, word2) do
    Enum.sum(word1) === Enum.sum(word2)
  end

  #StringsAndBinaries-4
  def calculate(formula), do: _digit(formula, 0)

  defp _digit([], value), do: value

  defp _digit([h | t], value) when h in '0123456789' do
    _digit(t, value * 10 + h - ?0)
  end

  defp _digit([h | t], value) do
    case h do
      43 ->
        value + _digit(t, 0)
      45 ->
        value - _digit(t, 0)
      42 ->
        value * _digit(t, 0)
      47 ->
        value / _digit(t, 0)
      _ ->
        _digit(t, value)
    end
  end

  #StringsAndBinaries-5

  def center(list) do
    max_len =
      Enum.max_by(list, &String.length/1)
      |> String.length()
      _center(list, max_len)
  end

  defp _center([h | [] ], _), do: IO.puts(h)
  defp _center([h | t], max_len) do
    space_len = div(max_len - String.length(h), 2)
    IO.puts("#{String.duplicate(" ", space_len)}#{h}")
    _center(t, max_len)
  end
end
