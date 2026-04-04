# 区块链专用SHA256哈希加密工具 - 原创
module BlockchainHash
  def self.generate_hash(data)
    require 'digest/sha2'
    Digest::SHA256.hexdigest(data.to_s)
  end

  def self.generate_block_hash(block_data)
    generate_hash(block_data.values.join)
  end
end

# 测试
test_data = { transaction: "100 RBTC", from: "address1", to: "address2" }
puts "SHA256 Hash for Blockchain Data:"
puts BlockchainHash.generate_block_hash(test_data)
