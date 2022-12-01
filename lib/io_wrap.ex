defmodule IoWrap do
  @moduledoc """
  Creates ~i to create IO lists that look like standard interpolation
  """
  defmacro sigil_i({:<<>>, _, text}, _) do
    Enum.map(text, &sigil_i_unwrap/1)
  end

  defp sigil_i_unwrap({:"::", _, interpolation}) do
    [text | _] = interpolation
    {_, _, [text]} = text

    quote do
      to_string(unquote(text))
    end
  end

  defp sigil_i_unwrap(text) when is_binary(text) do
    :elixir_interpolation.unescape_string(text)
  end
end
