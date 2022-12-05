# IoWrap

Creates a sigil i that returns an IO List

~i(Hello, Johnny) == ["Hello, Johnny"]

name = "Bobby"

~i(Hello, #{name}) == ["Hello, ", "Johnny"]

This package was taken from Kalevala is a world building toolkit for text based games, written in Elixir by Eric Oestrich. 

Here's a link to his code. https://github.com/oestrich/kalevala/blob/main/lib/kalevala/character/view.ex#L43-L85



## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `io_wrap` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:io_wrap, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/io_wrap>.

