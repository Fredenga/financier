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
    |> validate_format(:email_address, ~r/@/, message: "The email must contain an @")
    |> unique_constraint(:ememail_address, message: "This email is already taken")
    |> validate_length(:phone, min: 10, max: 15, message: "Phone number must be between 10 and 15 digits")
  end
end
