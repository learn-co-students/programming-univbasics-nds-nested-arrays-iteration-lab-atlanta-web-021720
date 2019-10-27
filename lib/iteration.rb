def join_ingredients(src)
  # Given an Array of 2-element Arrays ( [ [food1, food2], [food3, # food4]....[foodN, foodM]]):
  #
  # Build a new Array that contains strings where each pair of foods is
  # inserted into this template:
  #
  # "I love (inner array element 0) and (inner array element 1) on my pizza""
  # As such, there should be a new String for each inner array, or pair
  out_index = 0
  pizza_arr = []
  while out_index < src.count do
    first_ingred = src[out_index][0]
    sec_ingred = src[out_index][1]
    pizza_arr.push("I love " + first_ingred + " and " + sec_ingred + " on my pizza")
    out_index += 1
  end
  pizza_arr
end

def find_greater_pair(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # Produce a new Array that contains the larger number of each of the pairs
  # that are in the inner Arrays
  out_index = 0
  new_arr = []
  while out_index < src.count do
    inn_index = 0
    highest_inner = src[out_index][0]
    
    while inn_index < src[out_index].count do
      
      if src[out_index][inn_index] > highest_inner
        highest_inner = src[out_index][inn_index]
      end
      
    inn_index += 1
    end
    
    new_arr.push(highest_inner)
    out_index += 1
  end
  new_arr
end

def total_even_pairs(src)
  # src will be an array of [ [number1, number2], ... [numberN, numberM] ]
  # if both numbers in the pair are even, then add both those numbers to the
  # total
  #
  # As a reminder any number % 2 will return 0 or 1. If the result is 0, then
  # the number was even. Review the operator documentation if you've forgotten
  # this!
  out_index = 0
  sum = 0
  while out_index < src.count do
    if src[out_index][0] % 2 == 0 && src[out_index][1] % 2 == 0
      sum = sum + src[out_index][0] + src[out_index][1]
    end
    out_index += 1
  end
  sum
end
