defmodule Compose do
  @moduledoc """
  Documentation for Exercise.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Exercise.hello
      :world

  """
  def compose(f, g) when is_function(g) do
    fn arg -> compose(f, g.(arg)) end
  end

  def compose(f, arg) do
    f.(arg)
  end
end
