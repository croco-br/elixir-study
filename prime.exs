defmodule Prime do
  defmodule Numbers do
    defstruct [:number, :is_prime]
  end

  def is_prime(n, current) do
    cond do
      n == 1 ->
        {n, false}

      n == 2 || n == 3 || n == 5 ->
        {n, true}

      rem(n, 2) == 0 || rem(n, 3) == 0 || rem(n, 5) == 0 ->
        {n, false}

      rem(n, current) == 0 ->
        {n, false}

      1 == 1 ->
        {n, true}
    end
  end

  def check(number) do
    max = floor(:math.sqrt(number)) + 1

    Enum.map(
      1..max,
      (fn _x ->
         &Prime.is_prime(&1, number)
       end).(number)
    )
    |> IO.inspect()
  end
end

Prime.check(10_000_000)
