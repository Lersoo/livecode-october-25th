class Router
  def initialize(meals_controller)
    @meals_controller = meals_controller
    @running = true
  end

  def run
    welcome_user
    while @running
      display_tasks
      action_chosen = ask_user_for_input.to_i
      route_action(action_chosen)
    end
  end

  private

  def welcome_user
    puts "Hello world !"
  end

  def display_tasks
    puts "Choose a task :"
    puts "1 - List all meals"
    puts "2 - Add a meal to the menu"
    puts "9 - Exit"
  end

  def ask_user_for_input
    puts ">"
    gets.chomp
  end

  def route_action(action_chosen)
    print `clear`

    case action_chosen
    when 1
      @meals_controller.list
    when 2
      @meals_controller.add
    when 9
      @running = false
    else
      puts "Something went wrong! Please retry"
    end
  end
end
