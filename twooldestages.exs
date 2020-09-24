defmodule Solution do
  def two_oldest_ages(ages) do
    Enum.uniq(ages)
    |> Enum.sort()
    |> Enum.reverse()
    |> Enum.slice(0, 2)
  end
end

IO.inspect(Solution.two_oldest_ages([1, 5, 87, 45, 8, 8]))
