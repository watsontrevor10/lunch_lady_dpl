require = "pry"
require = "colorize"


class Wallet

  def initialize
    @starting_money = 10
    @money_clone = @starting_money
  end

end


class MainMenu < Wallet
  attr_accessor :main_dishes

  def main_dishes
    @main_dishes = [
      { name: "brisket", calories: "300", price: 18 },
      { name: "ribs", calories: "400", price: 17 },
      { name: "spaghetti", calories: "200", price: 10 },
      { name: "feijoada", calories: "350", price: 18 },
    ] 
  end

  def side_dishes
    @side_dishes = [
      { name: "ice cream", calories: "100", price: 3 },
      { name: "brazilian cheese balls", calories: "200", price: 4 },
      { name: "fries", calories: "200", price: 2 },
    ]
  end

end


class LunchLadyApp < MainMenu
attr_accessor :lunch_menu, :main_root_menu

def initialize
  @shopping_cart = [
    {}
  ]
  @amount_due = 0
end

  def main_root_menu

    puts "-- Welcome to Lunch Lady --"
    puts ""
    puts "Select what you would like to do:"
    puts ""
    puts "1) View Menu"
    puts "2) View Wallet Balance"
    puts "3) Add $ to Wallet"
    puts "4) View Order"
    puts "5) Submit Order"
    puts "6) Exit"

    user_selection = gets.strip.downcase

    case user_selection
    when "1", "view menu"
      lunch_menu
    when "2", "wallet balance", "balance"
      wallet_balance # go to "wallet_balance method"
    when "3", "add $", "$", "wallet"
      add_to_wallet # go to "add_to_wallet" method
    when "4", "view order"
      view_order # go to "view_order" method
    when "5", "submit order", "submit"
      submit_order # go to "submit_order" method
    else
      puts "Invalid choice, try again"
      user_selection
    end

  end

  def lunch_menu
    puts "-- Lunch Lady Menu --"
    puts ""
    puts "-- Main Dishes --"
    main_dishes.each_with_index do |main_dish, index|
      puts "#{index + 1}) #{main_dish[:name]} - $#{main_dish[:price]}".upcase
    end
    puts ""
    puts "-- Side Dishes --"
    side_dishes.each_with_index do |side_dish, index|
      puts "#{index + 1}) #{side_dish[:name]} - $#{side_dish[:price]}".upcase
    end
    #puts "1) #{main_dishes[0]}"
    #puts "2) Ribs"
    #puts "3) Spaghetti"
    #puts "4) Feijoada"
    puts "quit) Exit".upcase
    puts ""
    puts "Please choose a menu item by typing in the number"
    
    menu_choice = gets.strip.downcase

    case menu_choice
    when "1", "brisket", "Brisket"
      # @shopping_cart = []
      @shopping_cart << @main_dishes[0]
      puts @shopping_cart
      lunch_menu
    when "2", "ribs", "Ribs"

    when "3", "spaghetti", "Spaghetti", "Spagetti", "Spageti"

    when "4", "feijoada", "Feijoada", "fejoada", "fayjoada"

    when "5", "Quit", "quit"
      puts "Thank you for nothing"

    else
      puts "Not a valid choice, please try again"
  
    end
  end

  def wallet_balance
  
  end

  def add_to_wallet

  end

  def submit_order

  end


end


#Wallet.new
cash = Wallet.new
menu = MainMenu.new
appInstance = LunchLadyApp.new
appInstance.main_root_menu
 
