defmodule Mylist do
  def mapsum(list, func) do
    _mapsum(list, func, 0)
  end

  defp _mapsum([], _, total), do: total
  
  defp _mapsum(list = [head | tail], func, total) do
    _mapsum(tail, func, func.(head) + total)
  end
end
