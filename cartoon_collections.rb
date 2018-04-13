def roll_call_dwarves(array)
  array.each_with_index {|value, index|
    puts "#{index + 1} #{value}"}
end

def summon_captain_planet(planeteer_calls)
  array = planeteer_calls.map! {|w| w.capitalize + "!"}
end

def long_planeteer_calls(calls_long)
  calls_long.any? do |x|
    x.length > 4
  end
end

def find_the_cheese(cheese)
  cheese_types = ["cheddar", "gouda", "camembert"]

  array = cheese & cheese_types
  array[0]
end

=begin
This is another way I found to do what the assignment asked

def find_the_cheese(cheese)
  cheese_types = ["cheddar", "gouda", "camembert"]

  array = cheese & cheese_types
  array[0]
end
=end
