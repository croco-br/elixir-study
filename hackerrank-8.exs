defmodule Solution do
  def review(str) when length(str) <= 5 do
  end

  def review(str) when length(str) >= 5 do
    chars =
      String.replace_trailing(str, "\n", "")
      |> String.split(" ")

    IO.inspect(Enum.at(chars, 0) <> "=" <> String.trim(Enum.at(chars, 1)))
  end

  def start(:eof) do
  end

  def start(str) do
    Solution.review(str)
    Solution.start(Solution.read_input())
  end

  def read_input do
    IO.gets("")
  end
end

Solution.start(Solution.read_input())
