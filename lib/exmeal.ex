defmodule Exmeal do
  alias Exmeal.Meals.Create, as: MealCreate

  defdelegate meal_create(params), to: MealCreate, as: :call
end
