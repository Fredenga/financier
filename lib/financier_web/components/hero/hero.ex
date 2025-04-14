defmodule FinancierWeb.Hero.Hero do
  use Phoenix.Component
  import FinancierWeb.Hero.HeroText
  import FinancierWeb.Hero.HeroImg

  def hero(assigns) do
    ~H"""
      <div class="w-screen md:px-10 lg:px-24 pt-8 flex flex-col md:flex-row items-center md:items-start hero-background">
        <.hero_text />
        <.hero_img />
      </div>
    """
  end
end
