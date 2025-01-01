defmodule KinoExtrasTest do
  use ExUnit.Case
  doctest KinoExtras

  test "greets the world" do
    assert KinoExtras.hello() == :world
  end
end
