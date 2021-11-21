defmodule NifStarterTest do
  use ExUnit.Case
  doctest NifStarter

  test "greets the world" do
    assert NifStarter.hello() == :world
  end
end
