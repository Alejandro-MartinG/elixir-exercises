defmodule SentenceSmasherTest do
  use ExUnit.Case
  doctest SentenceSmasher

  test "empty smash test" do
    assert SentenceSmasher.smash([], ".") == ""
  end

  test "smash test" do
    assert SentenceSmasher.smash(["hello", "world"], ".") == "hello.world"
  end
end
