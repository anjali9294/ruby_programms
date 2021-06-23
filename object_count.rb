class ObjectCount
  @@count = 0

  def initialize
    @@count += 1
  end

  def self.count
    @@count
  end
end

ObjectCount.new
ObjectCount.new
ObjectCount.new
ObjectCount.new

p ObjectCount.count
