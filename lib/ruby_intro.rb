# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  if arr.size == 0
    0
  else
    arr.inject(0) {|total,element| total+element}
  end
end

def max_2_sum arr
  if arr.size == 0
    0
  elsif arr.size ==1
    arr[0]
  else
    biggest = arr.max
    arr.delete_at(arr.index(arr.max))
    secbiggest = arr.max
    biggest + secbiggest
  end
end

def sum_to_n? arr, n
  if arr.size == 0 || arr.size ==1
    return false
  else
    arr.each do |element|
      arr.each do |element2|
        if element+element2 == n && element != element2
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  a = s[0]
  if !(a =~ /[[:alpha:]]/)
    return false
  end
  if !["A","I","U","E","O"].include? a.upcase
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  arr = s.split("")
  arg = 0
  arr.each {|x| arg=1 if !["0","1"].include? x}
  if arg==1 || arr == []
    return false
  end
  
  if arr.join.to_i(2) % 4 == 0
    return true
  else
    return false
  end
  
end

# Part 3

class BookInStock
  
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError, "ISBN could not be empty" unless isbn!=""
    raise ArgumentError, "price could not be equal or less than 0" unless price>0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    p = (price*100).to_i.to_s.split("")
    ps = p[0..p.size()-3].join+"."+p[p.size()-2..p.size()-1].join
    return "$#{ps}"
  end
  
end
