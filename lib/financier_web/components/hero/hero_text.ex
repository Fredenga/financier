defmodule FinancierWeb.Hero.HeroText do
  use Phoenix.Component

  def hero_text(assigns) do
    ~H"""
      <div class="w-1/2">
        <h1 class="text-5xl leading-normal font-[600]">Effortlessly Organize and Simplify Your Finances</h1>
        <p class="text-md text-gray-500">Automatically track your expenses, set budgets, and achieve your financial goals with AI-powered insights. Your money, your rules — track, save, and grow.</p>
        <div class="flex items-center w-full mt-10">
          <button class="flex  space-x-3 bg-blue-500 text-white px-4 py-2 rounded-full">
            <p class="text-xl">Try for Free</p>
            <i class="fas fa-arrow-right text-blue-500 bg-white text-3xl p-2 rounded-full"></i>
          </button>
          <button class="flex space-x-2 bg-transparent px-3 py-1 rounded-full">
            <i class="fas fa-arrow-right bg-blue-500 text-white text-3xl p-2 rounded-full"></i>
            <p class="text-lg text-black">Download Now</p>
          </button>
        </div>
      </div>
    """
  end
end
