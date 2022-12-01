defmodule IoWrapTest do
  use ExUnit.Case
  import IoWrap

  test "sigil i returns IO List" do
    name = "Slim"
    assert ~i(Hello, #{name}) == ["Hello, ", "Slim"]
    assert ~i(Hello, Johnny) == ["Hello, Johnny"]
  end

  test "sigil i returns IO List with interpolation" do
    name = "Slim"
    assert ~i(Hello, #{name}) == ["Hello, ", "Slim"]
  end
end
