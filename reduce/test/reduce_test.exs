defmodule ReduceTest do
  use ExUnit.Case
  doctest Reduce

  test "add" do
    assert Reduce.reduce([2, 2], fn(x, y) -> x + y end) == 4
  end

  test "mult" do
    assert Reduce.reduce([3, 2], &(&1 * &2)) == 6
  end

  test "join" do
    assert Reduce.reduce(["hello", "world"], &(&1 <> " " <> &2)) == "hello world"
  end

  test "empty" do
    assert Reduce.reduce([], &(&1 <> " " <> &2)) == nil
  end
end
