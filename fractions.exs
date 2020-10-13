defmodule Fractions do
  def simplify(a, b) do
    divide(a, b, 10)
  end

  def divide(a, b, 1) do
    IO.puts("#{a}/#{b}")
  end

  def divide(a, b, x) do
    if rem(a, x) == 0 and rem(b, x) == 0 do
      divide(div(a, x), div(b, x), x)
    else
      divide(a, b, x - 1)
    end
  end
end

Fractions.simplify(45, 20)
