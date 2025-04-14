defmodule FinancierWeb.Hero.HeroImg do
  use Phoenix.Component

  def hero_img(assigns) do
    ~H"""
      <div class="w-1/2 flex items-center justify-center">
        <img src="/images/hero-img.jpg" alt="hero-img" class="h-[55vh] w-[100%] object-contain" />
      </div>
    """
  end
end
