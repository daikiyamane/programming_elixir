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
end
