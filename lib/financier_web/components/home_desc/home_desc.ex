defmodule FinancierWeb.HomeDesc.HomeDesc do
  use Phoenix.Component
  import FinancierWeb.HomeDesc.HomeFeatures
  import FinancierWeb.HomeDesc.HomeExp

  def home_desc(assigns) do
    ~H"""
      <div class="md:px-24 flex">
          <.home_exp />
          <.home_features />
      </div>
    """
  end
end
