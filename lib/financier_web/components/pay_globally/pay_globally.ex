defmodule FinancierWeb.PayGlobally.PayGlobally do
  use Phoenix.Component

  def pay_globally(assigns) do
    ~H"""
      <div class="px-24 mt-10 w-screen">
        <.pay_header />
        <.pay_body />
        <div class="mt-10">
          <.expand_business />

        </div>
      </div>
    """
  end

  defp pay_header(assigns) do
    ~H"""
    <div class="flex flex-col items-center justify-center w-full">
      <h1 class="text-5xl leading-normal font-[600] text-center">Pay Globally to Expand <br/> Your Business</h1>
      <p class="text-md text-gray-500 mt-5 text-center">Track your expenses automatically, set budgets, and achieve financial goals <br /> with AI-powered insights.</p>
    </div>
    """
  end

  defp expand_business(assigns) do
    ~H"""
        <div>
          <h1 class="text-5xl leading-normal font-[600]">Pay Globally to Expand <br/> Your Business</h1>
          <p class="text-md font-semibold text-gray-500 mt-5">Track your expenses automatically, set budgets, and achieve financial goals with AI-powered insights.<br /> with AI-powered insights.</p>
          <h2 class="text-lg font-[500] my-5">Empowering Seamless Digital Payments</h2>
          <p class="text-md text-gray-500 mt-5">Managing your expenses has never been easier! With Smart Expense Tracking, you can automatically monitor your spending.</p>
          <h2 class="text-lg font-[500] my-5">Manually Enter Cash Expenses</h2>
          <p class="text-md font-semibold text-gray-500 mt-5">Set alerts for budget limits, scan receipts with OCR technology, and add custom notes to keep everything organized.</p>
        </div>
    """
  end

  defp tx(assigns) do
    ~H"""
        <%!-- <img /> --%>
    """
  end

  defp pay_body(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)
    ~H"""
      <div class="mt-10 grid grid-cols-1 sm:grid-cols-2 gap-8 w-full">
        <div :for={item <- @items} class="space-y-3">
          <h2 class="text-2xl font-[400]"> <%= item["title"] %> </h2>
          <p class="text-md text-gray-500">
            <%= item["text"] %>
          </p>
          <img src={"images/pay_globally/#{item["src"]}"} alt="pay" class="" />
        </div>
      </div>
    """
  end

  defp items do
    [
        %{
        "title" => "Smart Expense Tracking",
        "text" => "Managing your expenses has never been easier! With Smart Expense Tracking, you can automatically track, categorize, and analyze your spending in real time.",
        "src" => "total_income.jpg"
        },
        %{
          "title" => "Comprehensive Electronic Banking Services",
          "text" => "Easily visualize where your money is going with detailed reports and interactive charts, helping you identify spending patterns and make smarter financial decisions.",
          "src" => "latest_tx.jpg"
        },
        %{
          "title" => "Real-Time Payment",
          "text" => "Our AI-powered system ensures that every transaction is logged accurately, whether it's from a bank account, credit card, or cash purchase.",
          "src" => "total_income.jpg"
        },
        %{
          "title" => "Collect All Payments Within Minutes",
          "text" => "Set alerts for budget limits, scan receipts with OCR technology, and add custom notes to keep everything organized.",
          "src" => "card.jpg"
        },
    ]
  end

end
