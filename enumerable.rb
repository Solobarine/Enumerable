module MyEnumerable
  def all?
    @list.each do |item|
      return false unless yield item
    end
    true
  end

  def any?
    @list.each do |item|
      return true if yield item
    end
    false
  end

  def filter?
    # Create an empty attay
    filtered_items = []
    @list.each do |item|
      filtered_items << item if yield item
    end
    filtered_items
  end
end
