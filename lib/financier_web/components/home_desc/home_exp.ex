defmodule FinancierWeb.HomeDesc.HomeExp do
  use Phoenix.Component

  def home_exp(assigns) do
    ~H"""
    <div class="w-1/2 p-8 pl-0">
      <h1 class="text-5xl leading-normal font-[600]">
        An Experience That Expands to Fit Your Finance Size
      </h1>
      
      <p class="text-md text-gray-500 mt-5 mb-10">
        Automatically track your expenses, set budgets, and achieve your financial goals with AI-powered insights.
      </p>
      
      <button class="flex  space-x-3 bg-blue-500 text-white px-4 py-2 rounded-full">
        <p class="text-xl">Try for Free</p>
         <i class="fas fa-arrow-right text-blue-500 bg-white text-3xl p-2 rounded-full"></i>
      </button>
    </div>
    """
  end
end
