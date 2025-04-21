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
    <div class="mb-10 w-full md:w-[60%]">
      <div
        phx-target={@myself}
        phx-click="toggle-faq"
        class="flex justify-between text-2xl cursor-pointer"
      >
        <h1>{@item.question}</h1>
        <%= if @clicked do %>
          <i class="fa fa-chevron-up" aria-hidden="true"></i>
        <% else %>
          <i class="fa fa-chevron-down" aria-hidden="true"></i>
        <% end %>
      </div>
      <div class={
      "transition-all duration-500 ease-in-out overflow-hidden " <>
        if @clicked, do: "max-h-96 opacity-100 pt-10", else: "max-h-0 opacity-0 py-0"
      }>
        <p class="max-w-xl">
          {@item.answer}
        </p>
      </div>
    </div>
    """
  end
end
