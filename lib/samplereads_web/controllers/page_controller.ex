defmodule SamplereadsWeb.PageController do
  use SamplereadsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
