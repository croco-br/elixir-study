defmodule AtomCreator do
  def create_atom_list(range) do
    create_atom_function = fn x ->
      Integer.to_string(x)
      |> String.to_atom()
      |> IO.inspect()
    end

    Enum.map(range, create_atom_function)
  end
end

AtomCreator.create_atom_list(1..1026027)
