defmodule FinancierWeb.HomeDesc.HomeFeatures do
  use Phoenix.Component

  def home_features(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)
    ~H"""
      <div class="w-1/2 p-8">
        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
          <div :for={item <- @items} >
            <div class="flex items-center space-x-3">
              <img class="w-8 h-8" src={"/images/home_desc/#{item["icon"]}"} alt="logo-svg" />
              <h3 class="text-xl"><%= item["title"] %></h3>
            </div>
            <p class="text-md text-gray-500 mt-2">
            Create a Seamless Financial Experience and Automate Repeat Purchases by Scheduling Recurring Payments.
            </p>
          </div>
        </div>
      </div>
    """
  end

  defp items do
      [
        %{
          "icon" => "icon1.svg",
          "title" => "Free Transfer",
        },
        %{
          "icon" => "icon2.svg",
          "title" => "Build for Instant"
        },
        %{
          "icon" => "icon3.svg",
          "title" => "Multiple Account"
        },
        %{
          "icon" => "icon4.svg",
          "title" => "Security"
        }
      ]
  end
end
