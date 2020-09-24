defmodule PracticeCaller do
  def start do
    spawn(fn -> loop(PracticeServer.start) end)
    spawn(fn -> loop(PracticeServer.start) end)
  end

  def loop(server) do
    message = IO.gets("Enter a message: ") |> String.trim_trailing
    send(server, {self, message})
    receive do
      {caller, reply} ->
        IO.puts "#{reply}"
        # Only continue if process is not dead.
        # Comparing against strings is usually not idiomatic, you may want to
        # change that.
        if reply != "Process Dead" do
          loop(server)
        end
    end
  end
end

defmodule PracticeServer do
  def start do
    spawn(&loop/0)
  end

  def loop do
    receive do
      {caller, "kill"} ->
        send(caller, {self, "Process Dead"})

      {caller,_} ->
        send(caller, {self, "Thank you for your message!"})
        loop
    end
  end
end

PracticeCaller.start
:timer.sleep(:infinity)
