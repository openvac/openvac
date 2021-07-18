defmodule OpenVacTest do
  use ExUnit.Case
  doctest OpenVac

  test "greets the world" do
    assert OpenVac.hello() == :world
  end
end
