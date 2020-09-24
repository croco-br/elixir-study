defmodule Solution do
  def weird(n) do
    cond do
      rem(n, 2) != 0 ->
        IO.puts("Weird")

        rem(n, 2) == 0 && n>=2 && n<=5 ->
        IO.puts("Not Weird")

        rem(n, 2) == 0 && n>=6 && n<=20 ->
          IO.puts("Weird")

          rem(n, 2) == 0 && n>=20 ->
            IO.puts("Not Weird")
      1 ->
        IO.puts("Weird")
    end
  end
end

Solution.weird(IO.gets("") |> String.to_integer)
