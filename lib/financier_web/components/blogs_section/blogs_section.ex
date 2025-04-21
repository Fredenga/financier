defmodule FinancierWeb.BlogsSection.BlogsSection do
  use Phoenix.Component

  def blogs_section(assigns) do
      ~H"""
        <div class="px-24 mt-20">
            <.blogs_section_header />
        </div>
      """
  end

  def blogs_section_header(assigns) do
    ~H"""
        <div class="">
          <div class="flex flex-col items-center justify-center w-full">
            <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">Make Smarter Financial Tips & Decisions</h1>
            <p class="text-md text-gray-500 mt-5 text-center max-w-xl">Easily track your expenses, set personalized budgets, and achieve your financial goals with AI-powered insights that help you make smarter financial decisions.</p>
          </div>
        </div>
    """
  end
end
