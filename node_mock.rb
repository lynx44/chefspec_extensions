require_relative('recursive_hash')

class NodeMock
  def initialize
    @hash = Hash.recursive
    @source = OpenStruct.new
  end

  def method_missing(method, *args, &block)
    @source.send(method, *args, &block)
  end

  def []=(key,val)
    @hash[key] = val
  end

  def [](key)
    @hash[key]
  end
end