defmodule Calculator do
  def mcd(a, b) do
    calculate(a, b, 2, 1)
  end

  def calculate(a, b, x, acc) do
    if rem(a, x) == 0 and rem(b, x) == 0 do
      calculate(div(a, x), div(b, x), x, acc * x)
    else
      if x < a and x < b do
        calculate(a, b, x + 1, acc)
      else
        IO.puts(acc)
      end
    end
  end
end

Calculator.mcd(15, 45)
