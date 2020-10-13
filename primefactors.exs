defmodule PrimeFactor do
  def calculate(x) when x > 0 do
    divide(x, 2, [])
  end

  def divide(x, divisor, acc) do
    if rem(x, divisor) == 0 do
      divide(
        div(x, divisor),
        divisor,
        [acc ++ (Integer.to_string(divisor) <> " ")]
      )
    else
      if divisor < :math.sqrt(x) + 1 do
        divide(x, divisor + 1, acc)
      else
        acc
      end
    end
  end
end

PrimeFactor.calculate(1024) |> IO.puts()
