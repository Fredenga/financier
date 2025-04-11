defmodule Financier.Repo do
  use Ecto.Repo,
    otp_app: :financier,
    adapter: Ecto.Adapters.Postgres
end
