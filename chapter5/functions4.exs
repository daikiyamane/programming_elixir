defmodule Functions4 do
  def newstrings() do
    prefix = fn str -> (fn str2 -> str <> " " <> str2 end) end
  end
end

"""
Functions4.newstrings().("Elixir").("Rocks") -> "Elixir Rocks"
"""
