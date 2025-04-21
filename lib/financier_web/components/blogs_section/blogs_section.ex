defmodule FinancierWeb.BlogsSection.BlogsSection do
  use Phoenix.Component

  def blogs_section(assigns) do
      ~H"""
        <div class="px-24 mt-20">
            <.blogs_section_header />
        </div>
      """
  end

  defp blogs_section_header(assigns) do
    ~H"""
        <div class="">
          <div class="flex flex-col items-center justify-center w-full">
            <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">Make Smarter Financial Tips & Decisions</h1>
            <p class="text-md text-gray-500 mt-5 text-center max-w-xl">Easily track your expenses, set personalized budgets, and achieve your financial goals with AI-powered insights that help you make smarter financial decisions.</p>
          </div>
        </div>
    """
  end

  defp blogs_cards(assigns) do
    ~H"""
        <div class="flex">
            <div>
                <img src="" alt="" class="" />
                <div class="flex items-center justify-between w-full">
                  <h2>Finance</h2>
                  <h2>February 19, 2025</h2>
                </div>
                <h1>10 Proven Ways to Save More Money Every Month</h1>
                <div class="flex items-center justify-between w-full">
                  <div>
                    <img src="" alt="" class="" />
                    <p>Elliot Haven</p>
                  </div>
                  <p>8 Minutes read</p>
                </div>
            </div>
        </div>
    """
  end

  defp cards do
    [
      %{
        img: "/images/blogs/blog1.jpg",
        title: "Finance",
        desc: "10 Proven Ways to Save More Money Every Month",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.jpg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      },
      %{
        img: "/images/blogs/blog2.jpg",
        title: "Investing",
        desc: "The Ultimate Guide to Reducing Unnecessary Expenses",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.jpg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      },
      %{
        img: "/images/blogs/blog3.jpg",
        title: "Saving",
        desc: "Drowning in Subscriptions? Tips to Track and Cancel Unused Services",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.jpg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      }
    ]
  end
end
