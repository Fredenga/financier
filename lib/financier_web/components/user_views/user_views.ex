defmodule FinancierWeb.UserViews.UserViews do
  use Phoenix.Component

  def user_views(assigns) do
    ~H"""
    <div class="px-24 mt-20 flex flex-col items-center">
      <.user_views_header />
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
end
