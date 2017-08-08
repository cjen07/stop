defmodule StopTest do
  use ExUnit.Case
  doctest Stop

  test "greets the world" do
    assert Stop.hello() == :world
  end
end
