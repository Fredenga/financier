defmodule FinancierWeb.ErrorJSONTest do
  use FinancierWeb.ConnCase, async: true

  test "renders 404" do
    assert FinancierWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert FinancierWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
