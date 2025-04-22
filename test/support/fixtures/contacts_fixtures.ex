defmodule Financier.ContactsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Financier.Contacts` context.
  """

  @doc """
  Generate a contact.
  """
  def contact_fixture(attrs \\ %{}) do
    {:ok, contact} =
      attrs
      |> Enum.into(%{
        email_address: "some email_address",
        first_name: "some first_name",
        last_name: "some last_name",
        message: "some message",
        phone: "some phone"
      })
      |> Financier.Contacts.create_contact()

    contact
  end
end
