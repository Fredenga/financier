defmodule FinancierWeb.HomeLive.Index do
    use FinancierWeb, :main_live_view

    @impl true
    def mount(_params, _session, socket) do
        {:ok, socket}
    end

    @impl true
    def render(assigns) do
        ~H"""
        <main class="mt-10 pt-[60px] pb-[80px]">
            <.hero />
        </main>
        """
    end
end
