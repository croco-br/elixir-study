defmodule Calculator do
  def square_root(num_user, decimals) when is_integer(num_user) and num_user > 0 do
    agregator(num_user, decimals)
  end

  def square_root(_num_user) do
    IO.puts("Input invalido")
  end

  def agregator(map_range, decimals) do
    first =
      Enum.map(
        1..map_range,
        &Calculator.proximity(&1, map_range)
      )
      |> Enum.max()

    result = Calculator.process(1, first, map_range, decimals)
    IO.inspect(result)
  end

  def proximity(x, num_user) do
    if x * x <= num_user do
      x
    else
      0
    end
  end

  def process(iterator, result, max, decimals) do
    if iterator <= decimals do
      current =
        Enum.map(
          0..9,
          &Calculator.proximity(Float.round(result + (&1 * (1/(:math.pow(10, iterator)))), decimals), max)
        ) |> Enum.max()

        process(iterator + 1, current, max, decimals)
    else
      result
    end
  end
end

Calculator.square_root(145, 4)
