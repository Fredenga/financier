defmodule FinancierWeb.GlobalBanking.GlobalBanking do
  use Phoenix.Component

  def global_banking(assigns) do
    ~H"""
      <div class="px-24 mt-10">
        <.global_header />
        <.global_stats />
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

  def global_stats(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)
    ~H"""
      <div>
        <div>
        <h2 class="text-2xl font-[400]"> HH </h2>
          <p class="text-md text-gray-500">
            HH2
          </p>
          <%!-- <img src={"images/pay_globally/#{item["src"]}"} alt="pay" class="" /> --%>
        </div>
      </div>
    """
  end

  defp items do
    [
        %{
          "title" => "Fast and Concurrent Operation",
          "text" => "Our AI-powered system ensures that every transaction is logged accurately.",
          "src" => "bank1.jpg"
        },
        %{
          "title" => "Advanced Encryption",
          "text" => "Set budget alerts, scan receipts with OCR, and add custom notes for better tracking.",
          "src" => "bank2.jpg"
        },
        %{
          "title" => "Entire Banking Transaction",
          "text" => "Our AI-powered system ensures that every transaction is logged accurately.",
          "src" => "bank3.jpg"
        }
    ]
  end
end
