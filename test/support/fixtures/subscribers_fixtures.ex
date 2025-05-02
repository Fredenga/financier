defmodule Financier.SubscribersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Financier.Subscribers` context.
  """

  @doc """
  Generate a subscriber.
  """
  def subscriber_fixture(attrs \\ %{}) do
    {:ok, subscriber} =
      attrs
      |> Enum.into(%{
        email: "some email"
      })
      |> Financier.Subscribers.create_subscriber()

    subscriber
  end
end
