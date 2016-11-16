# Release 0

# Option 1
# Pseudocode:

# procedure bubbleSort( A : list of sortable items )
#  n = length(A)
 #  repeat 
  #   swapped = false
   #  for i = 1 to n-1 inclusive do
    #   /* if this pair is out of order */
     #  if A[i-1] > A[i] then
      #   /* swap them and remember something changed */
       #  swap( A[i-1], A[i] )
        # swapped = true
      # end if
    # end for
   #until not swapped
# end procedure

def search_array(array, integer)
  index = 0
  while index < array.length
    if array[index] == integer
      return index
    else 
       nil
       index += 1
    end
  end
end

# Option 2
def search_array(arr, int)
  index = 0
  arr.each do |number|
    if number == int
      return index
    end
    index +=1
  end
  nil
end

# Release 1

# Option 1
def fib(number)
array = []
  if number == 0
array = []
  return array
  else 
  number == 1
array = [0, 1]
end

while array.length < number
array[array.length] = array[-1] + array[-2]
end
return array
end

Option #2
def fib(int)
  fibonacci = [0, 1]
  while fibonacci.length < int
    fibonacci << fibonacci[-2] + fibonacci[-1]  #Adds last two items of array together and pushes that value to array
  end
  fibonacci
end
# Driver Code:
p fib(100)[-1] == 218922995834555169026

# Sort Methods


def bubble_sort(array)
  count = array.length
  loop do
    swapped = false
    (count - 1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i] #reassigns values of numbers in array
        swapped = true
      end
    end
    break unless swapped
  end
end

# Driver Code:
array = [2, 7, 4, 8, 1]
bubble_sort(array)
p array

def selection_sort(array)
  array.each_index do |index|
    smallest_index = index
    for i in (index + 1)..(array.length - 1)
      if array[i] < array[smallest_index]
        smallest_index = i
      end
    end
    if smallest_index != index
      array[index], array[smallest_index] = array[smallest_index], array[index]
    end
  end
end

# Driver Code:
array = [2, 5, 7, 1, 3, 9]
selection_sort(array)
p array

def insertion_sort(array)
    for i in 1..(array.length - 1)
      j = i
      while j > 0 and array[j-1] > array[j]
        array[j], array[j-1] = array[j-1], array[j]
        j -= 1
      end
    end
end

# Driver Code:
array = [2, 6, 4, 8, 1]
insertion_sort(array)
p array