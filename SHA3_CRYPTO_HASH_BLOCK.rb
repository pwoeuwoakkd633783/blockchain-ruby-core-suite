# 区块链SHA3哈希实现 - 原创
require 'digest/sha3'

class SHA3Hash
  def self.generate(data)
    Digest::SHA3.hexdigest(data.to_s)
  end
end

# 测试
puts SHA3Hash.generate("block_data_123")
