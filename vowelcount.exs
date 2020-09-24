defmodule VowelCount do
  def get_count(str) do
    valid = ["a", "e", "o", "u", "i"]

    String.graphemes(str)
    |> Enum.filter(fn (x) -> Enum.member?(valid, x) end)
    |> Enum.count()
  end
end

IO.inspect(VowelCount.get_count("abracadabra"))
