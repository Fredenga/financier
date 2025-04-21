defmodule FinancierWeb.PayGlobally.PayGlobally do
  use Phoenix.Component

  def pay_globally(assigns) do
    ~H"""
    <div class="px-24 mt-20 w-screen">
      <.pay_header /> <.pay_body />
      <div class="mt-24 flex flex-col md:flex-row items-center w-full">
        <.expand_business /> <.tx />
      </div>
    </div>
    """
  end

  defp pay_header(assigns) do
    ~H"""
    <div class="flex flex-col items-center justify-center w-full mt-20">
      <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">
        Pay Globally to Expand Your Business
      </h1>

      <p class="text-md text-gray-500 mt-5 text-center max-w-xl">
        Track your expenses automatically, set budgets, and achieve financial goals with AI-powered insights.
      </p>
    </div>
    """
  end

  defp expand_business(assigns) do
    ~H"""
    <div class="w-1/2">
      <h1 class="text-5xl leading-normal font-[600] max-w-xl">
        Pay Globally to Expand Your Business
      </h1>

      <p class="text-md font-semibold text-gray-500 mt-5 max-w-xl">
        Track your expenses automatically, set budgets, and achieve financial goals with AI-powered insights with AI-powered insights.
      </p>

      <h2 class="text-lg font-[500] my-5">Empowering Seamless Digital Payments</h2>

      <p class="text-md text-gray-500 mt-5">
        Managing your expenses has never been easier! With Smart Expense Tracking, you can automatically monitor your spending.
      </p>

      <h2 class="text-lg font-[500] my-5">Manually Enter Cash Expenses</h2>

      <p class="text-md font-[500] text-gray-500 mt-5">
        Set alerts for budget limits, scan receipts with OCR technology, and add custom notes to keep everything organized.
      </p>

      <button class="flex mt-6 space-x-3 bg-blue-500 text-white px-4 py-2 rounded-full">
        <p class="text-xl">Try for Free</p>
        <i class="fas fa-arrow-right text-blue-500 bg-white text-3xl p-2 rounded-full"></i>
      </button>
    </div>
    """
  end

  defp tx(assigns) do
    ~H"""
    <div class="w-1/2">
      <img src="/images/pay_globally/tx_img.jpg" alt="" class="w-full h-[60vh] object-contain" />
    </div>
    """
  end

  defp pay_body(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)

    ~H"""
    <div class="mt-10 grid grid-cols-1 sm:grid-cols-2 gap-8 w-full">
      <div :for={item <- @items} class="space-y-3">
        <h2 class="text-2xl font-[400]">{item["title"]}</h2>

        <p class="text-md text-gray-500">
          {item["text"]}
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
        "text" =>
          "Managing your expenses has never been easier! With Smart Expense Tracking, you can automatically track, categorize, and analyze your spending in real time.",
        "src" => "total_income.jpg"
      },
      %{
        "title" => "Comprehensive Electronic Banking Services",
        "text" =>
          "Easily visualize where your money is going with detailed reports and interactive charts, helping you identify spending patterns and make smarter financial decisions.",
        "src" => "latest_tx.jpg"
      },
      %{
        "title" => "Real-Time Payment",
        "text" =>
          "Our AI-powered system ensures that every transaction is logged accurately, whether it's from a bank account, credit card, or cash purchase.",
        "src" => "total_income.jpg"
      },
      %{
        "title" => "Collect All Payments Within Minutes",
        "text" =>
          "Set alerts for budget limits, scan receipts with OCR technology, and add custom notes to keep everything organized.",
        "src" => "card.jpg"
      }
    ]
  end
end
