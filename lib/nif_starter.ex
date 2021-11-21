defmodule NifStarter do
  @moduledoc """
  Documentation for `NifStarter`.
  """
  use Rustler, otp_app: :nif_starter, crate: "nif_starter"

  @doc """
  add - hen the NIF is loaded, it will override this function.

  ## Examples

      iex> NifStarter.add(1, 2)
      3

  """
  def add(_a, _b), do: :erlang.nif_error(:nif_not_loaded)
end
