defmodule Calculator do
  def mcd(a, b) do
    IO.puts("#{a},#{b}")
    mcd(a, b, 2, [])
    IO.puts(acc)
  end

  def mcd(a, b, x, acc) when x < a and x < b do
    if rem(a, x) == 0 and rem(b, x) == 0 do
      acc ++ x
      mcd(div(a, x), div(b, x), x, acc)
    else
      if x + 1 < a and x + 1 < b do
        mcd(a, b, x + 1, acc)
      end
    end
  end
end

Calculator.mcd(500, 378)
