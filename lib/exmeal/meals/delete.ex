defmodule Exmeal.Meals.Delete do
alias Exmeal.{Meal, Repo}

  def call(id) do
    case Repo.get(Meal, id) do
      nil -> {:error, "Meal not found"}
      user -> Repo.delete(user)
    end
  end
end
