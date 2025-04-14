defmodule FinancierWeb.Navbar.Navbar do
  use Phoenix.Component

  def main_nav(assigns) do
    links = ["Home", "About", "Features", "Pricing"]
    assigns = assign(assigns, links: links)
    ~H"""
    <nav class="flex py-6 items-center w-screen fixed top-0 z-50 bg-white">
      <div class="w-1/3 text-center">
        <h1 class="text-2xl text-bold">Financier</h1>
      </div>
      <div class="w-1/3">
      <ul class="flex justify-between text-xl">
        <li :for={link <- @links} ><a href={"/#{String.downcase(link)}"} class="cursor-pointer"><%= link %></a></li>
      </ul>
      </div>
      <div class="w-1/3 flex items-center justify-center space-x-5">
        <i class="fas fa-shopping-bag text-xl"></i>
        <button class="flex items-center justify-center space-x-3 bg-black text-white px-4 py-2 rounded-full">
          <p class="text-xl">Try for Free</p>
          <i class="fas fa-arrow-right bg-blue-500 text-white text-3xl p-2 rounded-full"></i>
        </button>
      </div>
    </nav>
    """
  end
end
