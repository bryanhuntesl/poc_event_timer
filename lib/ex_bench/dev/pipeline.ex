defmodule ExBench.Dev.Pipeline do
  # We use Plug.Builder to have access to the plug/2 macro.
  # This macro can receive a function or a module plug and an
  # optional parameter that will be passed unchanged to the
  # given plug.
  use Plug.Builder
  plug(Plug.Logger)
  plug(ExBench.Dev.Metrics.PlugExporter, %{})
  plug(ExBench.Dev.Plug.Root, %{})
end
