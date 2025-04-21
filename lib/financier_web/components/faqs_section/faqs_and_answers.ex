defmodule FinancierWeb.FaqsSection.FaqsAndAnswers do
  use Phoenix.LiveComponent

  @impl true
  def update(assigns, socket) do
    socket =
      socket
      |> assign(:clicked, false)

    {:ok,
     socket
     |> assign(assigns)}
  end

  @impl true
  def handle_event("toggle-faq", _params, socket) do
    new_clicked = !socket.assigns.clicked
    IO.puts(new_clicked)
    {:noreply, assign(socket, :clicked, new_clicked)}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <div class="mt-20 w-full md:w-[60%]">
      <div
        phx-target={@myself}
        phx-click="toggle-faq"
        class="flex justify-between text-2xl cursor-pointer"
      >
        <h1>What is this app and how does it work?</h1>
        <%= if @clicked do %>
          <i class="fa fa-chevron-up" aria-hidden="true"></i>
          <% else %>
          <i class="fa fa-chevron-down" aria-hidden="true"></i>
        <% end %>
      </div>
      <div class={
      "transition-all duration-500 ease-in-out overflow-hidden " <>
        if @clicked, do: "max-h-96 opacity-100 py-10", else: "max-h-0 opacity-0 py-0"
      }>
          <p class="max-w-xl">
            Our app is a smart finance management tool that helps you track expenses,
            set budgets, and gain AI-powered financial insights. Connect your bank accounts,
            categorize spending, and achieve your savings goals effortlessly.
          </p>
      </div>
    </div>
    """
  end
end
