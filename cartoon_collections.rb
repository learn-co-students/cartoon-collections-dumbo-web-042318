def roll_call_dwarves(dwarf_names)
  dwarf_names.each_with_index { | name, index |
    puts "#{index + 1}. #{name}\n"    
  }
end

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { | call |
    call.capitalize << "!"
  }
end

def long_planeteer_calls(planeteer_calls)
  planeteer_calls.any? { | call |
    call.length > 4
  }
end

def find_the_cheese(ingredients)

  def find_cheese(list, cheese_name)
    list.find { | list_item |
      list_item == cheese_name
    }
  end

  cheese_types = ["cheddar", "gouda", "camembert"]
  first_cheese = ""
  cheese_index = nil

  cheese_types.each { | cheese |
    if ingredients.include?(cheese)
      if cheese_index == nil || ingredients.find_index(cheese) < cheese_index
        cheese_index = ingredients.find_index(cheese)
        first_cheese = find_cheese(ingredients, cheese)
      end
    end
  }

  if first_cheese == ""
    return nil
  else
    return first_cheese
  end

end
