defmodule FinancierWeb.PayGlobally.PayGlobally do
  use Phoenix.Component

  def pay_globally(assigns) do
    ~H"""
      <div class="px-24 mt-10">
        <.pay_header />
        <.pay_body />
      </div>
    """
  end

  defp pay_header(assigns) do
    ~H"""
    <div class="flex flex-col items-center justify-center">
      <h1 class="text-5xl leading-normal font-[600] text-center">Pay Globally to Expand <br/> Your Business</h1>
      <p class="text-md text-gray-500 mt-5 text-center">Track your expenses automatically, set budgets, and achieve financial goals <br /> with AI-powered insights.</p>
    </div>
    """
  end

  defp pay_body(assigns) do
    ~H"""
      <h1>Pay globally</h1>
    """
  end


end
