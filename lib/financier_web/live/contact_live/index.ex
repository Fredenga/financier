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

  @impl true
  def handle_event("validate_contact", %{"contact" => contact_params}, socket) do
    changeset =
      %Contact{}
      |> Contacts.change_contact(contact_params)
      |> Map.put(:action, :validate) # This allows errors to be shown in the form

    {:noreply, assign(socket, :form, to_form(changeset))}
  end

  @impl true
  def handle_event("save_contact", %{"contact" => contact_params}, socket) do
    case Contacts.create_contact(contact_params) do
      {:ok, _contact} ->
        {:noreply,
         socket
         |> put_flash(:info, "Contact created successfully.")
         |> push_navigate(to: "/")}

      {:error, changeset} ->
        {:noreply,
         socket
         |> assign(:form, to_form(changeset))}
    end
  end
end
