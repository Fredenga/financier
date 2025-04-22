defmodule Financier.Repo.Migrations.CreateContacts do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :first_name, :string
      add :last_name, :string
      add :phone, :string
      add :email_address, :string
      add :message, :string

      timestamps(type: :utc_datetime)
    end
  end
end
