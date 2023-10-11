defmodule Playground do
  def square_digits(n) do
    n
    |> to_string
    |> String.split("", trim: true)
    |> Enum.map(& &1 |> String.to_integer)
    |> Enum.map(& &1 * &1)
    |> Enum.join
  end
end

Playground.square_digits(91) |> IO.puts
