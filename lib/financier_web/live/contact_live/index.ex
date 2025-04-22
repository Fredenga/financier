defmodule FinancierWeb.ContactLive.Index do
  alias Financier.Contacts
  use FinancierWeb, :main_live_view
  import Phoenix.Component
  alias Contacts.Contact
  alias Contacts

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     socket
     |> assign(:page_title, "Contact")
     |> assign(:form, to_form(Contacts.change_contact(%Contact{})))}
  end
end
