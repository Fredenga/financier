defmodule FinancierWeb.UserViews.UserViews do
  use Phoenix.Component

  def user_views(assigns) do
    ~H"""
    <div class="px-24 mt-20 flex flex-col items-center">
      <.user_views_header />
      <.user_views_cards />
    </div>
    """
  end

  defp user_views_header(assigns) do
    ~H"""
    <div class="mb-20">
      <div class="flex flex-col items-center justify-center w-full">
        <h1 class="text-5xl leading-normal font-[700] text-center max-w-xl">
          Real Stories from Our Satisfied Users
        </h1>

        <p class="text-md text-gray-500 mt-5 text-center max-w-xl">
          Automatically track your expenses, set budgets, and achieve your financial goals with AI-powered insights.
        </p>
      </div>
    </div>
    """
  end

  defp user_views_cards(assigns) do
    ~H"""
      <div>
        <div class="flex flex-col md:flex-row lg:px-40 md:px-20">
          <div class="w-2/3 px-6">
            <h1 class="text-2xl mb-20 text-blue-500">verse</h1>
            <h2 class="text-lg mb-5 font-semibold">David Emily</h2>
            <p>
              I used to struggle with tracking my expenses and always wondered where my money went at the end of the month.
              Since I started using this app, I have complete visibility into my spending habits. The AI-powered insights have helped me identify!"
            </p>
          </div>
          <img src="/images/user_views/img1.jpg" alt="User Image" class="w-[40vh] object-contain rounded-xl" />
        </div>
      </div>
    """
    end

  end
