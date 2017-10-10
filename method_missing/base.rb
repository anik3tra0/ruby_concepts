class Base
  attr_accessor :object

  def initialize(object)
    self.object = object
  end

  def method_missing(m, *args, &block)
    puts "Delegating #{m}"
    respond_to?(m) ? object.send(m, *args, &block) : "The method #{m} does not exist"
  end
end
