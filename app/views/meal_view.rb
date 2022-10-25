class MealView
  def display_meals(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1} — #{meal.name} — #{meal.price}€"
    end
  end

  def ask_user_for_input(query)
    puts "What is the #{query} ?"
    gets.chomp
  end
end
