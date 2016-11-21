defmodule ScraperWeb.PageController do
  use ScraperWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
