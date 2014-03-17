# Refactered example:
def bakery_num(num_of_people, fav_food)
 my_list = { "pie" => 8, "cake" => 6, "cookie" => 1 }
 raise ArgumentError.new("You can't make that food") unless my_list.keys.include?(fav_food)
 fav_food_qty = my_list[fav_food]
 
 if num_of_people % fav_food_qty == 0
  return "You need to make #{num_of_people / fav_food_qty } #{fav_food}(s)."
 else
  quantities = []
  servings_remaining = num_of_people % fav_food_qty
  my_list.each_key do |k|
   case k
    when 'pie', 'cake'
     quantities << num_of_people / fav_food_qty
     num_of_people = servings_remaining
    else
     quantities << servings_remaining
     num_of_people = 0
   end
  end
 end
"You need to make #{quantities[0]} pie(s), #{quantities[1]} cake(s), and #{quantities[2]} cookie(s)."
end
#-----------------------------------------------------------------------------------------------------
#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError