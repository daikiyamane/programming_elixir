defmodule StringsAndBinaries do
  #StringsAndBinaries-1
  def space_to_tilda(list) do
    Enum.all?(list, &(&1 >= 32 and &1 <=126))
  end

  #StringsAndBinaries-2
  def anagram?(word1, word2) do
    Enum.sum(word1) === Enum.sum(word2)
  end
end
