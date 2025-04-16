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

  defp affordable_plans_cards(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)
    ~H"""
        <div class="flex flex-col md:flex-row space-x-5">
          <div class="space-y-5 bg-blue-500 text-white p-4 w-1/2" :for={item <- @items} >
            <h2 class="text-2xl"><%= item.title %></h2>
            <h3 class="text-xl max-w-xl"><%= item.desc %></h3>
            <p class="text-xl"><%= item.price %></p>
            <div class="space-y-2">
              <div class="space-x-2" :for={feature <- item.features}>
                <i class="fas fa-angle-right text-lg rounded-full bg-white text-black" aria-hidden="true"></i>
                <span class="text-lg"><%= feature %></span>
              </div>
            </div>
          </div>
        </div>
    """
  end

  defp items do
    [
      %{
        title: "Premium Plan",
        desc: "Get started with essential features for smarter money management.",
        price: "$500/month",
        features: [
          "Track expenses & categorize spending",
          "Set monthly budgets & savings goals",
          "Bank-level security & data encryption",
          "Manual expense entry & receipt scanning",
          "Basic financial reports & insights
"
        ]
      },
      %{
        title: "Business Plan",
        desc: "Unlock advanced features for deeper financial control & automation.",
        price: "$900/month",
        features: [
          "AI-powered insights & smart budgeting",
          "Automatic bank & card syncing",
          "Custom spending categories & unlimited",
          "Advanced reports & analytics",
          "Multi-device access & cloud backup"
        ]
      }
    ]
  end
end
