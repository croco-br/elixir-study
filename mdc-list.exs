defmodule Calculator do
  def mcd_list(numbers) do
    mcd(numbers, 2)
  end

  def mcd(numbers, x) do


    fun = fn n ->
      if rem(n, x) == 0 do
        acc = acc + 1
      end
    end

    debug(numbers,x)

    count = Enum.reduce(numbers, 0, fun)

    if(count == acc) do
      list =
        Enum.map(numbers, fn n ->
          n / x
        end)

      mcd(list, x)
    end
  end

  def debug(numbers, x) do
    Enum.map(numbers, fn n -> IO.puts("#{n} | #{x}") end)
  end
end

Calculator.mcd(45, 15)
