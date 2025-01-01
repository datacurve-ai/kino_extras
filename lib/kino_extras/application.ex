defmodule KinoExtras.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    Kino.SmartCell.register(KinoExtras.DynamicRemoteExecutionCell)

    children = []

    opts = [strategy: :one_for_one, name: Kino.Supervisor]

    Supervisor.start_link(children, opts)
  end
end
