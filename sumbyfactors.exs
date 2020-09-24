defmodule Sumofdivided do
  def sum_of_divided(lst) do
    # your code
  end
end

def is_prime(n)
 if n > 1 do
  Enum.each(2..sqrt(n))
  |> Enum.map(fn x-> rem(n,x) ==0  )

 end


defmodule Solution do
  def two_oldest_ages(ages) do
    Enum.uniq(ages)
    |> Enum.sort()
    |> Enum.reverse()
    |> Enum.slice(0, 2)
  end
end

IO.inspect(Solution.two_oldest_ages([1, 5, 87, 45, 8, 8]))
