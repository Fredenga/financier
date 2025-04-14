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
            <p class="text-lg text-gray-500 text-center mt-10">Trusted by the world’s leading company</p>
            <%!-- Implement swiper element here --%>
        </main>
        """
    end
end
