defmodule Financier.Contacts.Contact do
  use Ecto.Schema
  import Ecto.Changeset

  schema "contacts" do
    field :message, :string
    field :first_name, :string
    field :last_name, :string
    field :phone, :string
    field :email_address, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(contact, attrs) do
    contact
    |> cast(attrs, [:first_name, :last_name, :phone, :email_address, :message])
    |> validate_required([:first_name, :last_name, :phone, :email_address, :message])
  end
end
