defmodule StringsAndBinaries do
  def space_to_tilda(list) do
    Enum.all?(list, &(&1 >= 32 and &1 <=126))
  end
end
