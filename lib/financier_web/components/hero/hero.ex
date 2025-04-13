defmodule FinancierWeb.Hero.Hero do
  use Phoenix.Component
  import FinancierWeb.Hero.HeroText
  import FinancierWeb.Hero.HeroImg

  def hero(assigns) do
    ~H"""
      <div class="w-screen md:px-10 lg:px-24 flex mt-10">
        <.hero_text />
        <.hero_img />
      </div>
    """
  end
end
