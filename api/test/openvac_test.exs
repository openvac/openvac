defmodule OpenvacTest do
  use ExUnit.Case
  doctest Openvac

  test "greets the world" do
    assert Openvac.hello() == :world
  end
end
