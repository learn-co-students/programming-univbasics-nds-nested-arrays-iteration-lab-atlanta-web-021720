def join_ingredients(src)
 row_index = 0
 inner_array = []
 while row_index < src.count do 
   element1 = 0
   element2 = 1
    inner_array.push("I love #{src[row_index][element1]} and #{src[row_index][element2]} on my pizza")
  row_index += 1
end
inner_array
end 

def find_greater_pair(src)
  row_index = 0
  inner_array = []
  while row_index < src.count do
    element1 = 0
    element2 = 1
    if src[row_index][element1] > src[row_index][element2]
      inner_array.push(src[row_index][element1])
    else
      inner_array.push(src[row_index][element2])
    end
    row_index += 1
  end
  inner_array
end

def total_even_pairs(src)
  row_index = 0 
  total_evens_sum = 0
  inner_array = []
  while row_index < src.count do 
  element1 = 0
  element2 = 1
  if src[row_index][element1]%2 == 0 && src[row_index][element2]%2 == 0
    total_evens_sum += src[row_index][element1] + src[row_index][element2]
  end
  row_index +=1
end 
  total_evens_sum
end
