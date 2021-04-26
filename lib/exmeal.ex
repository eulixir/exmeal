defmodule Exmeal do
  alias Exmeal.Meals.Create, as: MealCreate
  alias Exmeal.Meals.Delete, as: MealDelete

  defdelegate meal_create(params), to: MealCreate, as: :call
  defdelegate meal_delete(params), to: MealDelete, as: :call

end
