defmodule TestansibleWeb.PageController do
  use TestansibleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
