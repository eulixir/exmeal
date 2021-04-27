defmodule Exmeal.Meals.Get do
  alias Exmeal.{Meal, Repo}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Id not found"}
      meal -> {:ok, meal}
    end
  end

  def call do
    case Repo.all(Meal) do
      nil -> {:error, "Don't have register"}
      meal -> {:ok, meal}
    end
  end
end
