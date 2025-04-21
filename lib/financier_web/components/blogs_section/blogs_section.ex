defmodule FinancierWeb.BlogsSection.BlogsSection do
  use Phoenix.Component

  def blogs_section(assigns) do
    ~H"""
    <div class="px-24 mt-20 flex flex-col items-center">
      <.blogs_section_header /> <.blogs_cards /> <.actions />
    </div>
    """
  end

  defp blogs_section_header(assigns) do
    ~H"""
    <div class="">
      <div class="flex flex-col items-center justify-center w-full">
        <h1 class="text-5xl leading-normal font-[600] text-center max-w-xl">
          Make Smarter Financial Tips & Decisions
        </h1>

        <p class="text-md text-gray-500 mt-5 text-center max-w-xl">
          Easily track your expenses, set personalized budgets, and achieve your financial goals with AI-powered insights that help you make smarter financial decisions.
        </p>
      </div>
    </div>
    """
  end

  defp blogs_cards(assigns) do
    items = items()
    assigns = assign(assigns, :items, items)

    ~H"""
    <div class="mt-16 grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
      <div :for={item <- @items} class="space-y-4">
        <img src={item.img} alt="blog-img" class="h-[50vh] object-contain rounded-xl" />
        <div class="flex items-center justify-between w-full">
          <h2 class="text-lg flex items-center justify-center text-white px-2 py-1/2 bg-blue-500 rounded-xl">
            {item.title}
          </h2>

          <h2 class="text-lg text-gray-500">{item.date}</h2>
        </div>

        <h1 class="text-xl font-semibold">{item.desc}</h1>

        <div class="flex items-center justify-between w-full">
          <div class="flex items-center space-x-3">
            <img src={item.avatar} alt="avatar-img" class="h-8 w-8 object-contain" />
            <p>{item.author}</p>
          </div>

          <p class="text-md text-gray-500">{item.duration}</p>
        </div>
      </div>
    </div>
    """
  end

  defp actions(assigns) do
    ~H"""
    <button class="flex mt-10 space-x-3 bg-blue-500 text-white px-4 py-2 rounded-full ">
      <p class="text-xl">Read More Blogs</p>
      <i class="fas fa-arrow-right text-blue-500 bg-white text-3xl p-2 rounded-full"></i>
    </button>
    """
  end

  defp items do
    [
      %{
        img: "/images/blogs/blog1.jpg",
        title: "Finance",
        desc: "10 Proven Ways to Save More Money Every Month",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.svg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      },
      %{
        img: "/images/blogs/blog2.jpg",
        title: "Investing",
        desc: "The Ultimate Guide to Reducing Unnecessary Expenses",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.svg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      },
      %{
        img: "/images/blogs/blog3.jpg",
        title: "Saving",
        desc: "Drowning in Subscriptions? Tips to Track and Cancel Unused Services",
        date: "February 19, 2025",
        avatar: "/images/blogs/avatar1.svg",
        author: "Elliot Haven",
        duration: "8 Minutes read"
      }
    ]
  end
end
