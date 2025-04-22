defmodule FinancierWeb.StayConnected.StayConnected do
  use Phoenix.Component

  def stay_connected(assigns) do
    ~H"""
    <div class="px-24 mt-20 flex flex-col items-center">
      <.stay_connected_header /> <.actions />
    </div>
    """
  end

  defp stay_connected_header(assigns) do
    ~H"""
    <div class="">
      <div class="flex flex-col items-center justify-center w-full">
        <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">
          Stay Connected, Manage Finances Smarter.
        </h1>
        
        <p class="text-md text-gray-500 mt-5 text-center max-w-xl">
          Take control of your finances effortlessly. Join thousands of users already making smarter financial decisions!
        </p>
      </div>
    </div>
    """
  end

  defp actions(assigns) do
    ~H"""
    <button class="flex mt-10 space-x-3 bg-blue-500 text-white px-4 py-2 rounded-full ">
      <p class="text-xl">Try for Free</p>
       <i class="fas fa-arrow-right text-blue-500 bg-white text-3xl p-2 rounded-full"></i>
    </button>
    """
  end
end
