defmodule Samplereads.Repo do
  use Ecto.Repo,
    otp_app: :samplereads,
    adapter: Ecto.Adapters.Postgres
end
