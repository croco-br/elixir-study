defmodule Fibonacci do
  def find(nth) do
    list = [1, 1]
    fib(list, nth)
  end

  def fib(list, 2) do
    Enum.reverse(list)
  end

  def fib(list, n) do
    [first_elem, second_elem | _] = list
    fib([first_elem + second_elem | list], n - 1)
  end
end

IO.inspect(Fibonacci.find(200000))
