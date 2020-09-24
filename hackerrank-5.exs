defmodule Solution do
  def weird(n) do
    Enum.each(1..10, fn x -> IO.puts("#{n} x #{x} = #{x*n}") end)
  end
end

Solution.weird(
  IO.gets("")
  |> String.trim()
  |> String.to_integer()
)
