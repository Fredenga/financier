defmodule FinancierWeb.GlobalBanking.GlobalBanking do
  use Phoenix.Component

  def global_banking(assigns) do
    ~H"""
      <div class="px-24 mt-10">
        <.global_header />
      </div>
    """
  end

  def global_header(assigns) do
    ~H"""
      <div class="flex flex-col items-center justify-center w-full">
        <h1 class="text-5xl leading-normal font-[600] text-center">We Provide Global <br/> Banking Services</h1>
        <p class="text-md text-gray-500 mt-5 text-center">Automatically track your expenses, set budgets, and achieve your <br /> financial goals with AI-powered insights.</p>
    </div>
    """
  end
end
