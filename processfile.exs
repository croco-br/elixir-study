defmodule ProcessFile do
  def start do
    File.write(
      "/home/local/IDEALINVEST/adriano.daniel/Documentos/repos/elixir_study/croco.txt",
      "1;2;3"
    )
  end

  def read(filename) do
    case File.read(filename) do
      {:ok, body} ->
        ProcessFile.write(filename, body)

      {:error, reason} ->
        IO.puts("Error: " <> reason)
    end
  end

  def write(filename, content) do
    File.write!(filename, content)
    ProcessFile.delete(filename)
  end

  def delete(filename) do
    IO.puts(File.rm!(filename))
  end
end

ProcessFile.start()
