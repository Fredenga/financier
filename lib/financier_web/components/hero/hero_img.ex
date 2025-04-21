defmodule FinancierWeb.Hero.HeroImg do
  use Phoenix.Component

  def hero_img(assigns) do
    ~H"""
    <div class="w-1/2 flex items-center justify-center relative">
      <img src="/images/hero/finance.svg" alt="finance" class="absolute left-2 top-2" />
      <img
        src="/images/hero/on_saves.jpg"
        alt="finance"
        class="absolute left-5 top-[1/4] h-44 w-44 object-contain"
      />
      <img src="/images/hero/hero-img.jpg" alt="hero-img" class="h-[55vh] w-[100%] object-contain" />
    </div>
    """
  end
end
