defmodule FinancierWeb.Hero.HeroText do
  use Phoenix.Component

  def hero_text(assigns) do
    ~H"""
      <div class="w-1/2">
        <h1 class="text-5xl ">Effortlessly Organize and Simplify Your Finances</h1>
      </div>
    """
  end
end
