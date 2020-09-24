defmodule Solution do
  def review(str) do
    chars =
      String.trim(str)
      |> String.graphemes()

    if(length(chars) > 2) do
      chars
      |> Enum.with_index()
      |> Enum.map(fn
        {s, idx} ->
          if rem(idx, 2) == 0 do
            IO.write(s)
          end
      end)

      IO.write(" ")

      chars
      |> Enum.with_index()
      |> Enum.map(fn
        {s, idx} ->
          if rem(idx, 2) != 0 do
            IO.write(s)
          end
      end)

      IO.write("\n")
    end
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
