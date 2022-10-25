require_relative "../views/meal_view"

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @meal_view = MealView.new
  end

  def list
    meals = @meal_repository.all
    @meal_view.display_meals(meals)
  end

  def add
    name = @meal_view.ask_user_for_input("name")
    price = @meal_view.ask_user_for_input("price").to_i
    meal = Meal.new(name: name, price: price)
    @meal_repository.create(meal)
  end
end
