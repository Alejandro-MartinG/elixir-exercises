defmodule MapsumTest do
  use ExUnit.Case
  doctest Mapsum

  test "get mapsum" do
    assert Mapsum.mapsum([1,2,3], fn(x) -> x * x end) == 14
  end

  test "get mapsum from a empty array" do
    assert Mapsum.mapsum([0], fn(x) -> x * x end) == 0
  end

  test "one element" do
    assert Mapsum.mapsum([8], fn(x) -> x * x end) == 64
  end
end
