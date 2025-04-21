defmodule FinancierWeb.Footer.Footer do
  use Phoenix.Component

  def main_footer(assigns) do
    ~H"""
    <%!-- fixed bottom-0 --%>
    <footer class="bg-black text-white w-screen">
      <div class="flex w-full py-10">
        <.news_letter /> <.pages />
      </div>
      <hr class="mx-auto w-5/6 border-t border-gray-300 mb-10" />
      <div class="text-center w-full mb-10 text-gray-400">
        <p>© Copyright 2025 | Design & Developed By Onixtheme - License | Powered By Webflow</p>
      </div>
    </footer>
    """
  end

  def news_letter(assigns) do
    ~H"""
    <div class="w-1/2 flex flex-col items-center justify-center">
      <div>
        <h1 class="mb-4 text-2xl font-bold">Financier</h1>

        <p class="mb-20 text-gray-400 text-lg">
          Take control of your finances and start your journey to financial freedom.
        </p>
        <label class="text-lg font-bold">Subscribe to the Newsletter</label>
        <form class="flex space-x-3 mt-6">
          <input
            placeholder="Enter your email address"
            class="bg-black border border-blue-500 p-2 pr-8 rounded-md"
          /> <button class="flex text-white px-6 py-3 bg-blue-500 rounded-md">Subscribe</button>
        </form>
      </div>
    </div>
    """
  end

  def pages(assigns) do
    ~H"""
    <div class="w-1/2 flex">
      <div class="w-1/3 space-y-4">
        <h1 class="text-2xl font-bold">Pages</h1>

        <ul class="space-y-3">
          <li class="text-lg text-gray-500 font-semibold">Home</li>

          <li class="text-lg text-gray-500 font-semibold">About</li>

          <li class="text-lg text-gray-500 font-semibold">Features</li>

          <li class="text-lg text-gray-500 font-semibold">Blog</li>

          <li class="text-lg text-gray-500 font-semibold">Pricing</li>
        </ul>
      </div>

      <div class="w-1/3 space-y-4">
        <h1 class="text-2xl font-bold">Pages</h1>

        <ul class="space-y-3">
          <li class="text-lg text-gray-500 font-semibold">Blog Single</li>

          <li class="text-lg text-gray-500 font-semibold">Pricing Single</li>

          <li class="text-lg text-gray-500 font-semibold">Contact</li>
        </ul>
      </div>

      <div class="w-1/3 space-y-4">
        <h1 class="text-2xl font-bold">Utility Pages</h1>

        <ul class="space-y-3">
          <li class="text-lg text-gray-500 font-semibold">Style Guide</li>

          <li class="text-lg text-gray-500 font-semibold">License</li>

          <li class="text-lg text-gray-500 font-semibold">Pass Protected</li>

          <li class="text-lg text-gray-500 font-semibold">Change Log</li>

          <li class="text-lg text-gray-500 font-semibold">404</li>
        </ul>
      </div>
    </div>
    """
  end
end
