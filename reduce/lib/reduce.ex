defmodule Reduce do
  def reduce([], _f) do
    nil
  end

  def reduce([head | tail], f) do
    reduce(tail, f, head)
  end

  defp reduce([], _f, acc) do
    acc
  end

  defp reduce([head | tail], f, acc) do
    reduce(tail, f, f.(acc, head))
  end
end
