defmodule SentenceSmasher do
  def smash([], _sep), do: ""

  def smash([word | tail], sep), do: smash(tail, sep, word)

  def smash([], _sep, acc), do: acc

  def smash([word | tail], sep, acc), do: smash(tail, sep, acc <> sep <> word)
end
