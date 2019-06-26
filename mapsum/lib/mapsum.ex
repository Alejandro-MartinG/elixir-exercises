defmodule Mapsum do
  def mapsum(numbers, f) do
    mapsum(numbers, f, 0)
  end

  defp mapsum([], _f, acc) do
    acc
  end

  defp mapsum([head | tail], f, acc) do
    mapsum(tail, f, acc + f.(head))
  end
end
