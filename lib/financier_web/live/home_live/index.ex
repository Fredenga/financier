defmodule FinancierWeb.HomeLive.Index do
    use FinancierWeb, :main_live_view

    @impl true
    def mount(_params, _session, socket) do
        {:ok, socket}
    end

    @impl true
    def render(assigns) do
        ~H"""
            <h1>Hello Home</h1>
        """
    end
end
