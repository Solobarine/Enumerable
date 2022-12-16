#iImport Enumerable
require_relative 'enumerable'

class MyList
  include MyEnumerable

  def initialize(*array)
    @list = array
  end

  def run
    yield(@list)
  end
end

list = MyList.new(1,2,3,4,5,6)

puts(list.all? { |e| e <= 10 })

puts(list.any? { |e| e < 5 })

puts(list.filter? { |e| e < 5 })
