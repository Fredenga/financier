defmodule FinancierWeb.AffordablePlans.AffordablePlans do
  use Phoenix.Component

  def affordable_plans(assigns) do
    ~H"""
        <div class="px-24 mt-20">
          <.affordable_plans_header />
        </div>
    """
  end
  def affordable_plans_header(assigns) do
    ~H"""
        <div class="">
          <div class="flex flex-col items-center justify-center w-full">
            <h1 class="text-5xl leading-normal font-[600] text-center">Affordable Plans to Fit<br/> Your Business Needs</h1>
            <p class="text-md text-gray-500 mt-5 text-center">Effortlessly track your expenses, set personalized budgets, and reach your financial goals with the help of AI-powered insights, making money management smarter and easier.</p>
          </div>
        </div>
    """
  end
  # def affordable_plans(assigns) do
  #   ~H"""
  #       <div class="px-24 mt-20">

  #       </div>
  #   """
  # end
end
