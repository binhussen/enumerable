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
