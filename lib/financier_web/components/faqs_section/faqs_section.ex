defmodule FinancierWeb.FaqsSection.FaqsSection do
  use Phoenix.Component

  def faqs_section(assigns) do
      ~H"""
          <div class="px-24 mt-20">
            <.faqs_header />
        </div>
      """
  end

  defp faqs_header(assigns) do
    ~H"""
        <div class="">
          <div class="flex flex-col items-center justify-center w-full">
            <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">Explore Our FAQs & Start Saving Smarter</h1>
            <p class="text-md text-gray-500 mt-5 text-center max-w-xl">Automatically track your expenses, set budgets, and achieve your financial goals with AI-powered insights.</p>
          </div>
        </div>
    """
  end
end
