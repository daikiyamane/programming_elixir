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
  def span(from, to), do: [from | span(from + 1, to)]

  #list_and_recursion_5
  def all?(enumerable, fun \\ fn x -> x end)
  def all?([], _fun), do: true
  def all?(_enumerable = [head | tail], fun), do: _all?(tail, fun, fun.(head))
  defp _all?(_, _, false), do: false
  defp _all?([], _, true), do: true
  defp _all?([head | tail], fun, _bool), do: _all?(tail, fun, fun.(head))

  def each(enumerable, fun), do: _each(enumerable, fun)
  defp _each([], _), do: :ok
  defp _each([head | tail], fun) do
    fun.(head)
    _each(tail, fun)
  end

  def filter(enumerable, fun), do: _filter(enumerable, fun)
  defp _filter([], _fun), do: []
  defp _filter([head | tail], fun) do
    if fun.(head) do
      [head | _filter(tail, fun)]
    else
      _filter(tail, fun)
    end
  end

  def split(enumerable, count), do: _split(enumerable, count, [])

  defp _split([], _, first), do: {:lists.reverse(first), []}

  defp _split(enumerable, 0, first), do: {:lists.reverse(first), enumerable}

  defp _split(enumerable = [head | tail], count, first) do
    if count > 0 do
      _split(tail, count - 1, [head | first])
    else
      c = length(enumerable) + count
      cond do
        c <= 0 ->
          {[], enumerable}
        true ->
          _split(tail, c - 1, [head | first])
      end
    end
  end

  def take(enumerable, amount) do
    if amount >= 0 do
      _take(enumerable, amount, [], "+")
    else
      :lists.reverse(enumerable)
        |> _take(amount * (-1), [], "-")
    end
  end

  defp _take(_, 0, list, op) do
    case op do
      "+" ->
        :lists.reverse(list)
      "-" ->
        list
    end
  end

  defp _take([], _, list, op) do
    case op do
      "+" ->
        :lists.reverse(list)
      "-" ->
        list
    end
  end

  defp _take([head | tail], amount, list, op) do
    _take(tail, amount - 1, [head | list], op)
  end
end
