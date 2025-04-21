defmodule FinancierWeb do
  @moduledoc """
  The entrypoint for defining your web interface, such
  as controllers, components, channels, and so on.

  This can be used in your application as:

      use FinancierWeb, :controller
      use FinancierWeb, :html

  The definitions below will be executed for every controller,
  component, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below. Instead, define additional modules and import
  those modules here.
  """

  def static_paths, do: ~w(assets fonts images favicon.ico robots.txt)

  def router do
    quote do
      use Phoenix.Router, helpers: false

      # Import common connection and controller functions to use in pipelines
      import Plug.Conn
      import Phoenix.Controller
      import Phoenix.LiveView.Router
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
    end
  end

  def controller do
    quote do
      use Phoenix.Controller,
        formats: [:html, :json],
        layouts: [html: FinancierWeb.Layouts]

      use Gettext, backend: FinancierWeb.Gettext

      import Plug.Conn

      unquote(verified_routes())
    end
  end

  def live_view do
    quote do
      use Phoenix.LiveView,
        layout: {FinancierWeb.Layouts, :app}

      unquote(html_helpers())
    end
  end

  def main_live_view do
    quote do
      use Phoenix.LiveView,
        layout: {FinancierWeb.Layouts, :main}

      unquote(html_helpers())
    end
  end

  def live_component do
    quote do
      use Phoenix.LiveComponent

      unquote(html_helpers())
    end
  end

  def html do
    quote do
      use Phoenix.Component

      # Import convenience functions from controllers
      import Phoenix.Controller,
        only: [get_csrf_token: 0, view_module: 1, view_template: 1]

      # Include general helpers for rendering HTML
      unquote(html_helpers())
    end
  end

  defp html_helpers do
    quote do
      # Translation
      use Gettext, backend: FinancierWeb.Gettext

      # HTML escaping functionality
      import Phoenix.HTML
      # Core UI components
      import FinancierWeb.CoreComponents
      import FinancierWeb.Navbar.Navbar
      import FinancierWeb.Footer.Footer
      import FinancierWeb.Hero.Hero
      import FinancierWeb.HomeDesc.HomeDesc
      import FinancierWeb.PayGlobally.PayGlobally
      import FinancierWeb.GlobalBanking.GlobalBanking
      import FinancierWeb.AffordablePlans.AffordablePlans
      import FinancierWeb.BlogsSection.BlogsSection
      import FinancierWeb.FaqsSection.FaqsSection
      import FinancierWeb.UserViews.UserViews
      import FinancierWeb.StayConnected.StayConnected

      # Shortcut for generating JS commands
      alias Phoenix.LiveView.JS

      # Routes generation with the ~p sigil
      unquote(verified_routes())
    end
  end

  def verified_routes do
    quote do
      use Phoenix.VerifiedRoutes,
        endpoint: FinancierWeb.Endpoint,
        router: FinancierWeb.Router,
        statics: FinancierWeb.static_paths()
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/live_view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
