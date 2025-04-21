defmodule FinancierWeb.GlobalBanking.GlobalBanking do
  use Phoenix.Component

  def global_banking(assigns) do
    ~H"""
    <div class="px-24 mt-10 flex flex-col items-center space-y-5">
      <.global_header /> <.global_stats />
    </div>
    """
  end

  def global_header(assigns) do
    ~H"""
    <div class="flex flex-col items-center justify-center w-full">
      <h1 class="text-5xl leading-normal font-[600] text-center">
        We Provide Global <br /> Banking Services
      </h1>
      
      <p class="text-md text-gray-500 mt-5 text-center">
        Automatically track your expenses, set budgets, and achieve your <br />
        financial goals with AI-powered insights.
      </p>
    </div>
    """
  end

  def global_stats(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)

    ~H"""
    <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 lg:mt-10 md:mt-20">
      <%= for item <- @items do %>
        <div class="space-y-3">
          <h2 class="text-2xl font-medium">{item["title"]}</h2>
          
          <p class="text-md text-gray-500">{item["text"]}</p>
          
          <img
            src={"images/global_banking/#{item["src"]}"}
            alt="pay"
            class="w-full h-[60vh] object-contain"
          />
        </div>
      <% end %>
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
        "text" =>
          "Set budget alerts, scan receipts with OCR, and add custom notes for better tracking.",
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
