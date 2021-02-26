defmodule DatamuseTest do
  use ExUnit.Case
  doctest Datamuse

  test "greets the world" do
    assert Datamuse.hello() == :world
  end
end
