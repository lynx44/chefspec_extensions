class Hash
  def self.recursive
    new { |hash, key| hash[key] = recursive }
  end
end