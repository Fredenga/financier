defmodule Financier.Repo.Migrations.CreateSubscribers do
  use Ecto.Migration

  def change do
    create table(:subscribers) do
      add :email, :string

      timestamps(type: :utc_datetime)
    end
  end
end
