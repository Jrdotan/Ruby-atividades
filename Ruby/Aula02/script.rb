require "pry"
lol = [[1 ,2 ,3], [4, 5, 6], [7,8,9]]
def decrement_smallest_value(nested_array)
  smallest_value = nested_array.flatten.min
  nested_array.map do |array|
    array.map do |current_value|
      current_value == smallest_value ? current_value - 1 : current_value
        

    end
  end
end
p lol #before
lol = decrement_smallest_value lol
p lol #after



