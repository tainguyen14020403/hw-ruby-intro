# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each {|a| sum = sum +a}
  return sum
end

def max_2_sum arr
  length = arr.length
  if length == 0
    return 0
  elsif length == 1
    return arr[0]
  else
    for i in 0..length-1
      for j in i..length-1  
        if (arr[i] > arr[j]) 
          swap = arr[i]
          arr[i] = arr[j]
          arr[j] = swap
        end
      end
    end
    return arr[length-1] + arr[length-2] 
  end
end

def sum_to_n? arr, n
    length = arr.length
    for i in 0..length-2
      for j in i+1..length-1 
          if arr[i] + arr[j] == n
            return true
          end
      end
    end
      return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
      
    start = s[0]
    if (/[b-df-hj-np-tv-z]/i.match(start)) != nil
      return true
    else
      return false
    end
end

def binary_multiple_of_4? s
    if (/^[0-1]+$/.match(s)).nil?
        return false
    end
   a = s.to_i
   if a % 4==0
     return true
   end
   return false
end

# Part 3

class BookInStock
def initialize(isbn, price)  
    if isbn.empty?
       raise(ArgumentError, "isbn can't be empty")
    elsif price <= 0
        raise(ArgumentError, "price can't be less than 0")
    end
    @isbn = isbn
    @price = price
end
    def isbn= isbn 
      @isbn = isbn
    end
    def price= price
      @price = price
    end
    def isbn
      @isbn
    end
    def price
      @price
    end
    def price_as_string
        return "$%.2f" % self.price
    end 

end
 
