defmodule Series do
  def sum(0) do
    "0.00"
  end
  
  def sum(1) do
    "1.00"
  end
  
  def sum(n) do
    (1..Kernel.-(n, 1))
    |> Enum.to_list()
    |> Enum.map(fn(x) -> (1 / (3 * x + 1)) end)
    |> Enum.sum()
    |> Kernel.+(1)
    |> Float.round(2)
    |> to_string()
  end
end
