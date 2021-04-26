defmodule ExmealWeb.MealsView do
  use ExmealWeb, :view

  def render("create.json", %{meal: meal}) do
    %{
      message: "Meal created!",
      meal: meal
    }
  end
end
