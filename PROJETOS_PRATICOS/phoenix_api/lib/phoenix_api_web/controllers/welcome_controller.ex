defmodule PhoenixApiWeb.WelcomeController do
  use PhoenixApiWeb, :controller

  def index(conn, _params) do
    text(conn, "Welcome to the Phoenix Api")
  end

end
