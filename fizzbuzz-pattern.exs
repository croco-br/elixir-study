defmodule FizzBuzz do
  def start(list) do
    # executa a operação compute para a lista passada como parâmetro
    Enum.map(list, &FizzBuzz.compute/1)
  end

  def compute(n) do
    # executa as seguintes operações: módulo por 3, módulo por 5 e o número original
    fizzbuzz(rem(n, 3), rem(n, 5), n)
  end

  # aqui ocorre o match pelos resultados da operação módulo da função compute, retornando:

  # FizzBuzz caso seja divisivel por 3 e 5 ao mesmo tempo
  defp fizzbuzz(0, 0, _), do: "FizzBuzz"
  # Fizz caso seja divisivel por 3
  defp fizzbuzz(0, _, _), do: "Fizz"
  # Buzz caso seja divisivel por 5
  defp fizzbuzz(_, 0, _), do: "Buzz"
  # número original caso os demais resultados
  defp fizzbuzz(_, _, n), do: n
end

# executa o programa para uma lista de 1 até 100
IO.inspect(FizzBuzz.start(1..100))
