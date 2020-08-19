defmodule Mylist do

  #list_and_recursion_0
  def sum([]), do: 0

  def sum([head | tail]), do: head + sum(tail)

  #list_and_recursion_1
  def mapsum(list, func) do
    _mapsum(list, func, 0)
  end

  defp _mapsum([], _, total), do: total

  defp _mapsum([head | tail], func, total) do
    _mapsum(tail, func, func.(head) + total)
  end

  #list_and_recursion_2
  def max([head | tail]) do
    _max(tail, head)
  end

  defp _max([], current), do: current

  defp _max([head | tail], current) when head >= current do
    _max(tail, head)
  end

  defp _max([head | tail], current) when head < current do
    _max(tail, current)
  end

  #list_and_recursion_3
  def caesar([], _), do: []
  def caesar([head | tail], n) do
    [char(head + n) | caesar(tail, n)]
  end
  defp char(n) when ?a <= n and ?z >= n, do: n
  defp char(n) do
    ?a + rem(n - ?z, ?z - ?a + 1) - 1
  end

  #list_and_recursion_4
  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from+1, to)]
end
