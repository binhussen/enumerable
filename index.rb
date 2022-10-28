require_relative 'MyEnumerable'
class MyList
  include MyEnumerable
  def initialize(*list)
    @list = list
  end
  def each
    (0...@list.length).each do |list|
      yield @list[list]
    end
  end
end

# Create our list
irb> list = MyList.new(1, 2, 3, 4)
=> #<MyList: @list=[1, 2, 3, 4]>

# Test #all?
irb> list.all? {|e| e < 5}
=> true
irb> list.all? {|e| e > 5}
=> false

# Test #any?
irb> list.any? {|e| e == 2}
=> true
irb> list.any? {|e| e == 5}
=> false

# Test #filter
irb> list.filter {|e| e.even?}
=> [2, 4]