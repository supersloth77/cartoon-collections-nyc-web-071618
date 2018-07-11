def roll_call_dwarves(dwarves)
  dwarves.each_with_index do |dwarf, index|
    puts "#{index + 1}. #{dwarf}"
  end
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map {|calls| calls.capitalize + "!"}
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? {|calls| calls.length > 4}
end

def find_the_cheese(food)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  #My original code below - was trying to combine and subtract arrays
  #new_food = (food << cheese_types).flatten!
  #new_food.uniq - food

  #second try below - tried to combine arrays and find duplicates
  food.concat cheese_types
  food.detect {|items| food.count(items) > 1}


end
