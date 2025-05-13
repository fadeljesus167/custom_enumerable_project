module Enumerable
  # Your code goes here

  def my_each_with_index
    if block_given?
      last_index = self.length - 1
      for i in 0..last_index
        yield(self[i], i)
      end
    end
    self
  end

  def my_map
    if block_given?
      new_array = []
      for element in self
        new_array << yield(element)
      end
    end
    new_array
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    if block_given?
      for element in self
        yield(element)
      end
    else
      self
    end
  end
end
