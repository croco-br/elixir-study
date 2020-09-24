defmodule BigList do
  def insert_sequential(list) do
    t = []

    Enum.each(list, fn x ->
      IO.puts(x)
      [x | t]
    end)
  end

  def insert_parallel(list) do
    t = []

    Enum.each(list, &Task.async(fn x ->
      IO.puts(x)
      [x | t]
    end))
  end
end

BigList.insert_parallel(1..9_999_999_999_999_999_999_999_999_999_999_999)
