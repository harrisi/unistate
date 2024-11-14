defmodule UniwhatTest do
  use ExUnit.Case
  doctest Uniwhat

  test "greets the world" do
    assert Uniwhat.hello() == :world
  end
end
