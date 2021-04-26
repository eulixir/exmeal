defmodule ExmealWeb.FallbackController do
  use ExmealWeb, :controller

  alias ExmealWeb.ErrorView

  def call(conn, {:error, %{result: result, status: status}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end
