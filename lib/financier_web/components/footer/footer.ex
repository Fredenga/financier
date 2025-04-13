defmodule FinancierWeb.Footer.Footer do
    use Phoenix.Component

    def main_footer(assigns) do
        ~H"""
            <div class="bg-black text-white w-screen">
                <div class="flex w-full py-10">
                    <.news_letter/>
                    <.pages/>
                </div>
                <div class="text-center">
                    <p>© Copyright 2025 | Design & Developed By Onixtheme - License | Powered By Webflow</p>
                </div>
            </div>
        """
    end

    def news_letter(assigns) do
        ~H"""
            <div class="w-1/2 flex flex-col items-center justify-center">
                <div>
                    <h1 class="mb-4">Financier</h1>
                    <p class="mb-16">Take control of your finances and start your journey to financial freedom.</p>
                    <label>Subscribe to the Newsletter</label>
                    <form class="flex space-x-3 mt-6">
                        <input placeholder="Enter your email address" class="bg-black border border-blue-500 p-2 pr-8 rounded-md" />
                        <button class="flex text-white px-6 py-3 bg-blue-500 rounded-md">Subscribe</button>
                    </form>
                </div>
            </div>
        """
    end
    def pages(assigns) do
        ~H"""
            <div class="w-1/2 flex">
                <div class="w-1/3 space-y-4">
                    <h1>Pages</h1>
                    <ul>
                        <li>Home</li>
                        <li>About</li>
                        <li>Features</li>
                        <li>Blog</li>
                        <li>Pricing</li>
                    </ul>
                </div>
                <div class="w-1/3 space-y-4">
                    <h1>Pages</h1>
                    <ul>
                        <li>Blog Single</li>
                        <li>Pricing Single</li>
                        <li>Contact</li>
                    </ul>
                </div>
                <div class="w-1/3 space-y-4">
                    <h1>Utility Pages</h1>
                    <ul>
                        <li>Style Guide</li>
                        <li>License</li>
                        <li>Pass Protected</li>
                    </ul>
                </div>
            </div>
        """
    end
end
