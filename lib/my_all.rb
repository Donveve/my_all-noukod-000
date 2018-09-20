require 'pry'

def my_all?(collection)
      my_all?([1,2,3]) {|i| i < 2}
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end

  if block_return_values.include?(true)
    false
  else
    true
  end
end
