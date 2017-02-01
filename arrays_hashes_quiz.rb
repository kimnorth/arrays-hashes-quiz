### A. Given the following data structure:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1. Work out how many stops there are in the array

puts lines.length()

# Alternative method

total_stops = 0
for stop in lines
  total_stops += 1
end

puts total_stops

# 2. Return 'Edinburgh Park' from the array

def return_edinburgh(array)
  return array[1]
end

puts return_edinburgh(lines)

# Or just printing to console

puts lines[1]

# 3. How many ways can we return 'Princes Street' from the array?

# Use index

princes_st = lines[4]

# For loop

for place in lines
    if place == "Princes Street"
      puts place
    end
end

# 4. Work out the index position of 'Haymarket'

index_position = 0
for place in lines
  if place != "Haymarket"
    index_position += 1
    next
  else
    break
  end
end
puts index_position

# 5. Add 'Airport' to the start of the array

lines.unshift('Airport')

# 6. Add 'York Place' to the end of the array

lines.push('York Place')

# 7. Remove 'Edinburgh Park' from the array using it's name

lines.delete("Edinburgh Park")

# 8. Delete 'Edinburgh Park' from the array by index

lines.delete_at(2) # index has changed because we unshifted 'Airport'

# 9. Reverse the positions of the stops in the array

lines.reverse!

### B. Given the following data structure:

my_hash = {"0" => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string `"One"`?

puts my_hash[1]

# 2. How would you return the string `"Two"`?

puts my_hash[:two]

# 3. How would you return the number `2`?

puts my_hash["two"]

# 4. How would you add `{3 => "Three"}` to the hash?

my_hash[3] = "Three"

# 5. How would you add `{:four => 4}` to the hash?

my_hash[:four] = 4

### C. Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :favourite_numbers => [12, 42, 75, 12, 5],
    :home_town => "Stirling",
    :pets => {
      "fluffy" => :cat,
      "fido" => :dog,
      "spike" => :dog
    }
  },
  "Erik" => {
    :twitter => "eriksf",
    :favourite_numbers => [8, 12, 24],
    :home_town => "Linithgow",
    :pets => {
      "nemo" => :fish,
      "kevin" => :fish,
      "spike" => :dog,
      "rupert" => :parrot
    }
  },
  "Avril" => {
    :twitter => "bridgpally",
    :favourite_numbers => [12, 14, 85, 88],
    :home_town => "Dunbar",
    :pets => {
      "colin" => :snake
    }
  }
}

puts "**********"

# 1. Return Jonathan's Twitter handle (i.e. the string `"jonnyt"`)

twitter_handle = users["Jonathan"][:twitter]

# 2. Return Erik's hometown

erik_hometown = users["Erik"][:home_town]

# 3. Return the array of Erik's favorite numbers

erik_fave_numbers = users["Erik"][:favourite_numbers]

# 4. Return the type of Avril's pet Colin

avril_pet = users["Avril"][:pets]["colin"]

# 5. Return the smallest of Erik's favorite numbers

users["Erik"][:favourite_numbers][0]

# # an alternative way
# for number in users["Erik"][:favourite_numbers]
#   if number == 8
#     puts number
#     break
#   end
# end

# The following was an attempt to find out the smallest number if we didn't know what it was... Couldn't get it to work, but including because I want to discuss it in a 1-to-1 or in class! Just stores all elements in the new variable.

# def find_lowest_number(array)
#   number_count = 0      
#   for number in array
#     if (number != number_count)
#       number_count += 1
#     else
#       return number_count
#     end
#   end
# end
# lowest_number = find_lowest_number(users["Erik"][:favourite_numbers])
# puts lowest_number

# 6. Add the number `7` to Erik's favorite numbers

users["Erik"][:favourite_numbers].unshift(7)

# 7. Change Erik's hometown to Edinburgh

users["Erik"][:home_town] = "Edinburgh"

# 8. Add a pet dog to Erik called "Fluffy"

users["Erik"][:pets]["Fluffy"] = :dog

# 9. Add yourself to the users hash

users["Kim"] = {
  twitter: "benignhumour",
  favourite_numbers: [7, 13, 21],
  home_town: "London",
  pets: {
    "Iggy" => :dog
  } 
}