defmodule FinancierWeb.AffordablePlans.AffordablePlans do
  use Phoenix.Component

  def affordable_plans(assigns) do
    ~H"""
        <div class="px-24 mt-20">
          <.affordable_plans_header />
          <.affordable_plans_cards />
        </div>
    """
  end
  def affordable_plans_header(assigns) do
    ~H"""
        <div class="">
          <div class="flex flex-col items-center justify-center w-full">
            <h1 class="text-5xl leading-normal font-[600] text-center">Affordable Plans to Fit<br/> Your Business Needs</h1>
            <p class="text-md text-gray-500 mt-5 text-center max-w-xl">Effortlessly track your expenses, set personalized budgets, and reach your financial goals with the help of AI-powered insights, making money management smarter and easier.</p>
          </div>
        </div>
    """
  end
  def affordable_plans_cards(assigns) do
    ~H"""
        <div class="">
          <div class="space-y-5">
            <h2 class="text-2xl">Premium Plan</h2>
            <h3 class="text-xl max-w-xl">Get started with essential features for smarter money management.</h3>
            <p class="text-xl">$500/month</p>
            <div>
              <div class="space-x-2">
                <i class="fas fa-angle-right bg-white text-black" aria-hidden="true"></i>
                <span class="">Track expenses & categorize spending</span>
              </div>
              <div>
                <i class="fas fa-angle-right" aria-hidden="true"></i>
                <span>Set monthly budgets & savings goals</span>
              </div>
            </div>
          </div>
        </div>
    """
  end
end
