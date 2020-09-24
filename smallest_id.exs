defmodule Order do
  def next_id(ids) do
     #obtem um range de valores a partir do minimo da lista
     # (o abs é para tratar negativos) e obtem um valor +1 além do máximo
    range = Enum.to_list(abs(Enum.min(ids)-1)..(Enum.max(ids) + 1))
    diff = range -- ids #descobre a diferença entre as listas
    Enum.min(diff) #retorna o menor
  end
end

IO.inspect(Order.next_id([0,1,2,3,5]))
