defmodule BruteForce do

  defmodule Attributes do
    defstruct [:environment_temperature, :genetic_disposition, :local_humidity, :luminosity, :tdul]
  end

  def func_to_solve(t, d, u, l) do
    9 * (-(:math.pow(t - 30, 2) / 2000) + 1 + d + :math.exp(-:math.pow(u - 0.98, 2) / 0.028) +
    1 / (1 + :math.exp(-(1 / 250) * (l - 15))))
  end

  def compute(count) do
    IO.inspect(
      Enum.map(
        count,
        &to_solve/1
      ) |> Enum.sort_by(&(&1.tdul)) |> Enum.reverse |> Enum.take(1)
    )
  end

  def to_solve _x do
    t = Enum.random(-10000..10000) / 100
    d = Enum.random(0..100) / 100
    u = Enum.random(0..100) / 100
    l = Enum.random(-200_000..200_000) / 100

    tdul = func_to_solve(t, d, u, l)

    %Attributes{environment_temperature: t, genetic_disposition: d, local_humidity: u, luminosity: l, tdul: tdul}

  end

  def start do
    compute(1..500)
  end
end


BruteForce.start()
