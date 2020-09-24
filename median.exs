defmodule Calculator do
  def get_average(marks) do
    size = Enum.count(marks) #pega o tamanho da lista
    sum = Enum.sum(marks) #soma todos os elementos

    floor(sum / size) #obtém a média arredondando para baixo
  end
end

Calculator.get_average([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
