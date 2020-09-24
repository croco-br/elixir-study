
age = IO.gets("digite um inteiro: ")
n = String.strip(age)
new_age = String.to_integer(n)
hello_worlds.(new_age)

hello_worlds = &(IO.puts(List.duplicate("Hello World\n", &1)))
hello_worlds.(10)
