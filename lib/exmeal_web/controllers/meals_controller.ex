defmodule ExmealWeb.MealsController do
  use ExmealWeb, :controller

  alias Exmeal.Meal

  alias ExmealWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Meal{} = meal} <- Exmeal.meal_create(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end

  # def delete(conn, %{"id" => id}) do
  #   with {:ok, %User{}} <- Rockelivery.delete_user(id) do
  #     conn
  #     |> put_status(:no_content)
  #     |> text("")
  #   end
  # end

  # def show(conn, %{"id" => id}) do
  #   with {:ok, %User{} = user} <- Rockelivery.get_user_by_id(id) do
  #     conn
  #     |> put_status(:ok)
  #     |> render("user.json", user: user)
  #   end
  # end

  # def update(conn, params) do
  #   with {:ok, %User{} = user} <- Rockelivery.update_user(params) do
  #     conn
  #     |> put_status(:ok)
  #     |> render("user.json", user: user)
  #   end
  # end
end
