# module Frequency
#   def Freq
#     puts copy
#   end
# end

# class Structure
#   include Frequency

#   def initialize(*number)
#     i = 0
#     number.size.times do 
#       @arr[i] = number[i]
#     end
#     puts arr
#   end
# end

# Str = Structure.new(1,2,3,4,5)

class Structure
  # include Frequency

  def initialize(a)
    @arr = a
    #puts @arr
  end
  def sort
    puts @arr.sort!
  end
  def Freq
    hash = {}
    count=0
    @arr.each do |items|
      prev = items
      @arr.each do |item|
        count+=1 if prev == item
      end
      hash[prev] = count
      count = 0
    end

    return hash
  end

end
hash1 = {}
a = [1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33]
Str = Structure.new(a)
Str.sort
hash1 = Str.Freq
puts hash1


# hash = {}
# hash[3] = 3
# hash[1] = 5
# hash[2] = 3
# hash.sort_by {|k, v| k}
# puts hash