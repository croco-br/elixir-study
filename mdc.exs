defmodule Calculator do
  def mcd(a, b) do
     #IO.puts("mcd: #{a},#{b}")
    calculate(a, b, 2, []) |> IO.inspect()
  end

  def calculate(a, b, x, _acc) when x < a and x < b do
    IO.puts("mcd: #{a},#{b}")
  end

  def calculate(a, b, x, acc) do
    IO.puts(x)
    if rem(a, x) == 0 and rem(b, x) == 0 do
      calculate(div(a, x), div(b, x), x, acc ++ x)
    else
      next = x+1
      if next < a and next < b do
        calculate(a, b, next, acc)
      end
    end
  end
end

Calculator.mcd(15,45)
